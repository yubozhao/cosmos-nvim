local cosmos = require('core.cosmos')
local options = require('layers.ui.options')
local configs = require('layers.ui.configs')

cosmos.add_plugin(
  "NvChad/nvim-base16.lua",
  {
    after = "packer.nvim",
    config = function()
      require("layers.ui.colors").init()
    end,
  }
)

cosmos.add_plugin(
  'kyazdani42/nvim-web-devicons',
  {
    after = { "nvim-base16.lua" },
    config = configs.web_devicons,
  }
)

cosmos.add_plugin(
  'goolord/alpha-nvim',
  {
    after = { 'nvim-web-devicons' },
    config = configs.alpha,
  }
)

cosmos.add_plugin(
  'navarasu/onedark.nvim',
  {
    config = configs.onedark,
  }
)

cosmos.add_plugin(
  'lukas-reineke/indent-blankline.nvim',
  {
    config = configs.indent_blankline,
  }
)

if options.enable_todo_comments then
  cosmos.add_plugin(
    'folke/todo-comments.nvim',
  {
      requires = 'nvim-lua/plenary.nvim',
      config = configs.todo_comments,
    }
  )
end

cosmos.add_plugin(
  'p00f/nvim-ts-rainbow',
  {
    after = { 'nvim-treesitter' },
  }
)

cosmos.add_plugin(
  'nvim-lualine/lualine.nvim',
  {
    after = { 'nvim-web-devicons' },
    config = configs.lualine,
  }
)

cosmos.add_plugin(
  'j-hui/fidget.nvim',
  {
    requires = {
      'nvim-lualine/lualine.nvim',
    },
    config = configs.fidget,
  }
)

cosmos.add_plugin(
  'akinsho/bufferline.nvim',
  {
    after = { 'nvim-web-devicons' },
    config = configs.bufferline,
  }
)

cosmos.add_plugin('onsails/lspkind-nvim')

if options.enable_smooth_scrolling then
  cosmos.add_plugin(
    'karb94/neoscroll.nvim',
    {
      config = configs.neoscroll,
    }
  )
end

if options.enable_beacon then
  cosmos.add_plugin('danilamihailov/beacon.nvim')
end

if options.enable_illuminate then
  cosmos.add_plugin('RRethy/vim-illuminate')
end

if options.enable_colorizer then
  cosmos.add_plugin(
    'norcalli/nvim-colorizer.lua',
    {
      config = configs.colorizer,
    }
  )
end

if options.enable_scrollbar then
  cosmos.add_plugin(
    'petertriho/nvim-scrollbar',
    {
      requires = {
        {
          'kevinhwang91/nvim-hlslens',
          config = configs.hlslens,
        },
      },
      config = configs.scrollbar,
    }
  )
end

if options.enable_gps then
  cosmos.add_plugin(
    'SmiteshP/nvim-gps',
    {
      requires = { 'nvim-treesitter/nvim-treesitter' },
      config = configs.gps,
    }
  )
end
