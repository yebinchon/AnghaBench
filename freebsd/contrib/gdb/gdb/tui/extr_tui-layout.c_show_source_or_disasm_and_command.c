
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* has_locator; struct tui_gen_win_info* execution_info; } ;
struct TYPE_7__ {TYPE_1__ source_info; } ;
struct TYPE_8__ {int x; int y; } ;
struct tui_gen_win_info {int height; int width; TYPE_3__ origin; int type; } ;
struct tui_win_info {TYPE_2__ detail; struct tui_gen_win_info generic; void* can_highlight; } ;
typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;
struct TYPE_9__ {struct tui_gen_win_info generic; int can_highlight; } ;


 int DONT_BOX_WINDOW ;
 int EXEC_INFO_WIN ;
 int FALSE ;
 int LOCATOR_WIN ;
 int SRC_COMMAND ;
 void* TRUE ;
 TYPE_4__* TUI_CMD_WIN ;
 struct tui_win_info* TUI_DISASM_WIN ;
 struct tui_win_info* TUI_SRC_WIN ;
 int init_and_make_win (void**,int ,int,int,int ,int,int ) ;
 int init_gen_win_info (struct tui_gen_win_info*,int ,int,int,int,int) ;
 int make_command_window (TYPE_4__**,int,int) ;
 int make_disasm_window (struct tui_win_info**,int,int ) ;
 int make_source_window (struct tui_win_info**,int,int ) ;
 int tui_current_layout () ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int tui_make_visible (struct tui_gen_win_info*) ;
 int tui_refresh_win (struct tui_gen_win_info*) ;
 int tui_set_current_layout_to (int) ;
 int tui_show_locator_content () ;
 int tui_show_source_content (struct tui_win_info*) ;
 int tui_term_height () ;
 int tui_term_width () ;

__attribute__((used)) static void
show_source_or_disasm_and_command (enum tui_layout_type layout_type)
{
  if (tui_current_layout () != layout_type)
    {
      struct tui_win_info * *win_info_ptr;
      int src_height, cmd_height;
      struct tui_gen_win_info * locator = tui_locator_win_info_ptr ();

      if (TUI_CMD_WIN != ((void*)0))
 cmd_height = TUI_CMD_WIN->generic.height;
      else
 cmd_height = tui_term_height () / 3;
      src_height = tui_term_height () - cmd_height;


      if (layout_type == SRC_COMMAND)
 win_info_ptr = &TUI_SRC_WIN;
      else
 win_info_ptr = &TUI_DISASM_WIN;

      if ((*win_info_ptr) == ((void*)0))
 {
   if (layout_type == SRC_COMMAND)
     make_source_window (win_info_ptr, src_height - 1, 0);
   else
     make_disasm_window (win_info_ptr, src_height - 1, 0);
   init_and_make_win ((void **) & locator,
      LOCATOR_WIN,
      2 ,
      tui_term_width (),
      0,
      src_height - 1,
      DONT_BOX_WINDOW);
 }
      else
 {
   init_gen_win_info (locator,
      LOCATOR_WIN,
      2 ,
      tui_term_width (),
      0,
      src_height - 1);
   (*win_info_ptr)->detail.source_info.has_locator = TRUE;
   init_gen_win_info (
       &(*win_info_ptr)->generic,
       (*win_info_ptr)->generic.type,
       src_height - 1,
       (*win_info_ptr)->generic.width,
        (*win_info_ptr)->detail.source_info.execution_info->width,
       0);
   init_gen_win_info ((*win_info_ptr)->detail.source_info.execution_info,
      EXEC_INFO_WIN,
      src_height - 1,
      3,
      0,
      0);
   (*win_info_ptr)->can_highlight = TRUE;
   tui_make_visible (&(*win_info_ptr)->generic);
   tui_make_visible ((*win_info_ptr)->detail.source_info.execution_info);
 }
      if ((*win_info_ptr) != ((void*)0))
 {
   (*win_info_ptr)->detail.source_info.has_locator = TRUE;
   tui_make_visible (locator);
   tui_show_locator_content ();
   tui_show_source_content (*win_info_ptr);

   if (TUI_CMD_WIN == ((void*)0))
     {
       make_command_window (&TUI_CMD_WIN, cmd_height, src_height);
       tui_refresh_win (&TUI_CMD_WIN->generic);
     }
   else
     {
       init_gen_win_info (&TUI_CMD_WIN->generic,
          TUI_CMD_WIN->generic.type,
          TUI_CMD_WIN->generic.height,
          TUI_CMD_WIN->generic.width,
          TUI_CMD_WIN->generic.origin.x,
          TUI_CMD_WIN->generic.origin.y);
       TUI_CMD_WIN->can_highlight = FALSE;
       tui_make_visible (&TUI_CMD_WIN->generic);
     }
 }
      tui_set_current_layout_to (layout_type);
    }
}
