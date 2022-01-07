
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int y; } ;
struct tui_gen_win_info {int height; int width; TYPE_3__ origin; int type; } ;
struct TYPE_15__ {struct tui_gen_win_info generic; void* can_highlight; } ;
struct TYPE_11__ {void* has_locator; struct tui_gen_win_info* execution_info; } ;
struct TYPE_12__ {TYPE_1__ source_info; } ;
struct TYPE_14__ {TYPE_2__ detail; struct tui_gen_win_info generic; void* can_highlight; } ;


 int DONT_BOX_WINDOW ;
 int EXEC_INFO_WIN ;
 void* FALSE ;
 int LOCATOR_WIN ;
 scalar_t__ SRC_DISASSEM_COMMAND ;
 void* TRUE ;
 TYPE_7__* TUI_CMD_WIN ;
 TYPE_4__* TUI_DISASM_WIN ;
 TYPE_4__* TUI_SRC_WIN ;
 int init_and_make_win (void**,int ,int,int,int ,int,int ) ;
 int init_gen_win_info (struct tui_gen_win_info*,int ,int,int,int,int) ;
 int make_command_window (TYPE_7__**,int,int) ;
 int make_disasm_window (TYPE_4__**,int,int) ;
 int make_source_window (TYPE_4__**,int,int ) ;
 scalar_t__ tui_current_layout () ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int tui_make_visible (struct tui_gen_win_info*) ;
 int tui_refresh_win (struct tui_gen_win_info*) ;
 int tui_set_current_layout_to (scalar_t__) ;
 int tui_show_locator_content () ;
 int tui_show_source_content (TYPE_4__*) ;
 int tui_term_height () ;
 int tui_term_width () ;

__attribute__((used)) static void
show_source_disasm_command (void)
{
  if (tui_current_layout () != SRC_DISASSEM_COMMAND)
    {
      int cmd_height, src_height, asm_height;

      if (TUI_CMD_WIN != ((void*)0))
 cmd_height = TUI_CMD_WIN->generic.height;
      else
 cmd_height = tui_term_height () / 3;

      src_height = (tui_term_height () - cmd_height) / 2;
      asm_height = tui_term_height () - (src_height + cmd_height);

      if (TUI_SRC_WIN == ((void*)0))
 make_source_window (&TUI_SRC_WIN, src_height, 0);
      else
 {
   init_gen_win_info (&TUI_SRC_WIN->generic,
      TUI_SRC_WIN->generic.type,
      src_height,
      TUI_SRC_WIN->generic.width,
      TUI_SRC_WIN->detail.source_info.execution_info->width,
      0);
   TUI_SRC_WIN->can_highlight = TRUE;
   init_gen_win_info (TUI_SRC_WIN->detail.source_info.execution_info,
      EXEC_INFO_WIN,
      src_height,
      3,
      0,
      0);
   tui_make_visible (&TUI_SRC_WIN->generic);
   tui_make_visible (TUI_SRC_WIN->detail.source_info.execution_info);
   TUI_SRC_WIN->detail.source_info.has_locator = FALSE;;
 }
      if (TUI_SRC_WIN != ((void*)0))
 {
   struct tui_gen_win_info * locator = tui_locator_win_info_ptr ();

   tui_show_source_content (TUI_SRC_WIN);
   if (TUI_DISASM_WIN == ((void*)0))
     {
       make_disasm_window (&TUI_DISASM_WIN, asm_height, src_height - 1);
       init_and_make_win ((void **) & locator,
          LOCATOR_WIN,
          2 ,
          tui_term_width (),
          0,
          (src_height + asm_height) - 1,
          DONT_BOX_WINDOW);
     }
   else
     {
       init_gen_win_info (locator,
          LOCATOR_WIN,
          2 ,
          tui_term_width (),
          0,
          (src_height + asm_height) - 1);
       TUI_DISASM_WIN->detail.source_info.has_locator = TRUE;
       init_gen_win_info (
    &TUI_DISASM_WIN->generic,
    TUI_DISASM_WIN->generic.type,
    asm_height,
    TUI_DISASM_WIN->generic.width,
   TUI_DISASM_WIN->detail.source_info.execution_info->width,
    src_height - 1);
       init_gen_win_info (TUI_DISASM_WIN->detail.source_info.execution_info,
          EXEC_INFO_WIN,
          asm_height,
          3,
          0,
          src_height - 1);
       TUI_DISASM_WIN->can_highlight = TRUE;
       tui_make_visible (&TUI_DISASM_WIN->generic);
       tui_make_visible (TUI_DISASM_WIN->detail.source_info.execution_info);
     }
   if (TUI_DISASM_WIN != ((void*)0))
     {
       TUI_SRC_WIN->detail.source_info.has_locator = FALSE;
       TUI_DISASM_WIN->detail.source_info.has_locator = TRUE;
       tui_make_visible (locator);
       tui_show_locator_content ();
       tui_show_source_content (TUI_DISASM_WIN);

       if (TUI_CMD_WIN == ((void*)0))
  make_command_window (&TUI_CMD_WIN,
        cmd_height,
        tui_term_height () - cmd_height);
       else
  {
    init_gen_win_info (&TUI_CMD_WIN->generic,
       TUI_CMD_WIN->generic.type,
       TUI_CMD_WIN->generic.height,
       TUI_CMD_WIN->generic.width,
       0,
       TUI_CMD_WIN->generic.origin.y);
    TUI_CMD_WIN->can_highlight = FALSE;
    tui_make_visible (&TUI_CMD_WIN->generic);
  }
       if (TUI_CMD_WIN != ((void*)0))
  tui_refresh_win (&TUI_CMD_WIN->generic);
     }
 }
      tui_set_current_layout_to (SRC_DISASSEM_COMMAND);
    }
}
