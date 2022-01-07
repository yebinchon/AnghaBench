
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int line_no; int addr; } ;
union tui_which_element {TYPE_2__ locator; } ;
union tui_line_or_address {int line_no; int addr; } ;
struct TYPE_5__ {int viewport_height; } ;
struct tui_win_info {TYPE_1__ generic; } ;
struct tui_win_element {union tui_which_element which_element; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct symtab_and_line {TYPE_3__* symtab; int line; } ;
struct frame_info {int dummy; } ;
struct TYPE_8__ {int count; scalar_t__* list; } ;
struct TYPE_7__ {char* filename; } ;
typedef int CORE_ADDR ;


 int EMPTY_SOURCE_PROMPT ;
 int TRUE ;
 struct tui_win_info* TUI_DISASM_WIN ;
 struct tui_win_info* TUI_SRC_WIN ;
 int error (char*) ;
 int find_frame_sal (struct frame_info*,struct symtab_and_line*) ;
 scalar_t__ find_pc_partial_function (int ,char**,int *,int ) ;
 int get_frame_pc (struct frame_info*) ;
 int tui_addr_is_displayed (int ,struct tui_win_info*,int ) ;
 int tui_clear_source_content (struct tui_win_info*,int ) ;
 int * tui_get_function_from_frame (struct frame_info*) ;
 int tui_get_low_disassembly_address (int ,int ) ;
 scalar_t__ tui_line_is_displayed (int,struct tui_win_info*,int ) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int tui_set_is_exec_point_at (union tui_line_or_address,struct tui_win_info*) ;
 int tui_set_locator_info (char*,int *,int ,int ) ;
 int tui_show_locator_content () ;
 scalar_t__ tui_source_is_displayed (char*) ;
 TYPE_4__* tui_source_windows () ;
 int tui_update_exec_info (struct tui_win_info*) ;
 int tui_update_source_window (struct tui_win_info*,TYPE_3__*,union tui_line_or_address,int ) ;

void
tui_show_frame_info (struct frame_info *fi)
{
  struct tui_win_info * win_info;
  int i;

  if (fi)
    {
      int start_line, i;
      CORE_ADDR low;
      struct tui_gen_win_info * locator = tui_locator_win_info_ptr ();
      int source_already_displayed;
      struct symtab_and_line sal;

      find_frame_sal (fi, &sal);

      source_already_displayed = sal.symtab != 0
        && tui_source_is_displayed (sal.symtab->filename);
      tui_set_locator_info (sal.symtab == 0 ? "??" : sal.symtab->filename,
                            tui_get_function_from_frame (fi),
                            sal.line,
                            get_frame_pc (fi));
      tui_show_locator_content ();
      start_line = 0;
      for (i = 0; i < (tui_source_windows ())->count; i++)
 {
   union tui_which_element *item;
   win_info = (struct tui_win_info *) (tui_source_windows ())->list[i];

   item = &((struct tui_win_element *) locator->content[0])->which_element;
   if (win_info == TUI_SRC_WIN)
     {
       start_line = (item->locator.line_no -
      (win_info->generic.viewport_height / 2)) + 1;
       if (start_line <= 0)
  start_line = 1;
     }
   else
     {
       if (find_pc_partial_function (get_frame_pc (fi), (char **) ((void*)0),
         &low, (CORE_ADDR) ((void*)0)) == 0)
  error ("No function contains program counter for selected frame.\n");
       else
  low = tui_get_low_disassembly_address (low, get_frame_pc (fi));
     }

   if (win_info == TUI_SRC_WIN)
     {
       union tui_line_or_address l;
       l.line_no = start_line;
       if (!(source_already_displayed
      && tui_line_is_displayed (item->locator.line_no, win_info, TRUE)))
  tui_update_source_window (win_info, sal.symtab, l, TRUE);
       else
  {
    l.line_no = item->locator.line_no;
    tui_set_is_exec_point_at (l, win_info);
  }
     }
   else
     {
       if (win_info == TUI_DISASM_WIN)
  {
    union tui_line_or_address a;
    a.addr = low;
    if (!tui_addr_is_displayed (item->locator.addr, win_info, TRUE))
      tui_update_source_window (win_info, sal.symtab, a, TRUE);
    else
      {
        a.addr = item->locator.addr;
        tui_set_is_exec_point_at (a, win_info);
      }
  }
     }
   tui_update_exec_info (win_info);
 }
    }
  else
    {
      tui_set_locator_info (((void*)0), ((void*)0), 0, (CORE_ADDR) 0);
      tui_show_locator_content ();
      for (i = 0; i < (tui_source_windows ())->count; i++)
 {
   win_info = (struct tui_win_info *) (tui_source_windows ())->list[i];
   tui_clear_source_content (win_info, EMPTY_SOURCE_PROMPT);
   tui_update_exec_info (win_info);
 }
    }
}
