
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union tui_line_or_address {int line_no; } ;
struct symtab_and_line {TYPE_1__* symtab; int line; } ;
struct TYPE_2__ {char* filename; } ;
typedef int CORE_ADDR ;


 scalar_t__ SRC_DISASSEM_COMMAND ;
 int TRUE ;
 int TUI_SRC_WIN ;
 struct symtab_and_line find_pc_line (int ,int ) ;
 int set_current_source_symtab_and_line (struct symtab_and_line*) ;
 scalar_t__ tui_current_layout () ;
 int tui_show_disassem (int ) ;
 int tui_update_locator_filename (char*) ;
 int tui_update_source_window (int ,TYPE_1__*,union tui_line_or_address,int ) ;

void
tui_show_disassem_and_update_source (CORE_ADDR start_addr)
{
  struct symtab_and_line sal;

  tui_show_disassem (start_addr);
  if (tui_current_layout () == SRC_DISASSEM_COMMAND)
    {
      union tui_line_or_address val;





      sal = find_pc_line (start_addr, 0);
      val.line_no = sal.line;
      tui_update_source_window (TUI_SRC_WIN, sal.symtab, val, TRUE);
      if (sal.symtab)
 {
   set_current_source_symtab_and_line (&sal);
   tui_update_locator_filename (sal.symtab->filename);
 }
      else
 tui_update_locator_filename ("?");
    }

  return;
}
