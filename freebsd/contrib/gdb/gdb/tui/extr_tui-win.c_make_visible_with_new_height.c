
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union tui_line_or_address {int addr; int line_no; } ;
struct TYPE_10__ {int curch; int cur_line; } ;
struct TYPE_8__ {int addr; int line_no; } ;
struct TYPE_9__ {TYPE_1__ start_line_or_addr; TYPE_5__* execution_info; } ;
struct TYPE_11__ {TYPE_3__ command_info; TYPE_2__ source_info; } ;
struct TYPE_12__ {int type; int handle; int * content; } ;
struct tui_win_info {TYPE_4__ detail; TYPE_5__ generic; } ;
struct symtab_and_line {int line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
struct frame_info {int dummy; } ;






 int TRUE ;
 struct frame_info* deprecated_selected_frame ;
 int find_line_pc (struct symtab*,int ,int *) ;
 struct symtab* find_pc_symtab (int ) ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 int get_frame_pc (struct frame_info*) ;
 int tui_check_and_display_highlight_if_needed (struct tui_win_info*) ;
 int tui_display_all_data () ;
 int tui_free_win_content (TYPE_5__*) ;
 TYPE_5__* tui_locator_win_info_ptr () ;
 int tui_make_visible (TYPE_5__*) ;
 int tui_show_locator_content () ;
 int tui_update_source_window (struct tui_win_info*,struct symtab*,union tui_line_or_address,int ) ;
 int tui_win_has_locator (struct tui_win_info*) ;
 int wmove (int ,int ,int ) ;

__attribute__((used)) static void
make_visible_with_new_height (struct tui_win_info * win_info)
{
  struct symtab *s;

  tui_make_visible (&win_info->generic);
  tui_check_and_display_highlight_if_needed (win_info);
  switch (win_info->generic.type)
    {
    case 128:
    case 129:
      tui_free_win_content (win_info->detail.source_info.execution_info);
      tui_make_visible (win_info->detail.source_info.execution_info);
      if (win_info->generic.content != ((void*)0))
 {
   union tui_line_or_address line_or_addr;
   struct symtab_and_line cursal
     = get_current_source_symtab_and_line ();

   if (win_info->generic.type == 128)
     line_or_addr.line_no =
       win_info->detail.source_info.start_line_or_addr.line_no;
   else
     line_or_addr.addr =
       win_info->detail.source_info.start_line_or_addr.addr;
   tui_free_win_content (&win_info->generic);
   tui_update_source_window (win_info, cursal.symtab, line_or_addr, TRUE);
 }
      else if (deprecated_selected_frame != (struct frame_info *) ((void*)0))
 {
   union tui_line_or_address line;
   struct symtab_and_line cursal = get_current_source_symtab_and_line ();


   s = find_pc_symtab (get_frame_pc (deprecated_selected_frame));
   if (win_info->generic.type == 128)
     line.line_no = cursal.line;
   else
     {
       find_line_pc (s, cursal.line, &line.addr);
     }
   tui_update_source_window (win_info, s, line, TRUE);
 }
      if (tui_win_has_locator (win_info))
 {
   tui_make_visible (tui_locator_win_info_ptr ());
   tui_show_locator_content ();
 }
      break;
    case 130:
      tui_display_all_data ();
      break;
    case 131:
      win_info->detail.command_info.cur_line = 0;
      win_info->detail.command_info.curch = 0;
      wmove (win_info->generic.handle,
      win_info->detail.command_info.cur_line,
      win_info->detail.command_info.curch);
      break;
    default:
      break;
    }
}
