
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union tui_line_or_address {int line_no; } ;
struct symtab {int dummy; } ;
typedef int CORE_ADDR ;




 int FALSE ;
 int SRC_DISASSEM_COMMAND ;
 int find_line_pc (struct symtab*,int,int *) ;
 int tui_current_layout () ;
 int tui_show_disassem (int ) ;
 int tui_show_symtab_source (struct symtab*,union tui_line_or_address,int ) ;
 int tui_update_source_windows_with_addr (int ) ;

void
tui_update_source_windows_with_line (struct symtab *s, int line)
{
  CORE_ADDR pc;
  union tui_line_or_address l;

  switch (tui_current_layout ())
    {
    case 129:
    case 128:
      find_line_pc (s, line, &pc);
      tui_update_source_windows_with_addr (pc);
      break;
    default:
      l.line_no = line;
      tui_show_symtab_source (s, l, FALSE);
      if (tui_current_layout () == SRC_DISASSEM_COMMAND)
 {
   find_line_pc (s, line, &pc);
   tui_show_disassem (pc);
 }
      break;
    }

  return;
}
