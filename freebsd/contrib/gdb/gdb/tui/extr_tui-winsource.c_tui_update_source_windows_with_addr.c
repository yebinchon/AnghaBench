
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union tui_line_or_address {int line_no; } ;
struct tui_win_info {int dummy; } ;
struct symtab_and_line {int symtab; int line; } ;
struct TYPE_2__ {int count; scalar_t__* list; } ;
typedef scalar_t__ CORE_ADDR ;




 int EMPTY_SOURCE_PROMPT ;
 int FALSE ;

 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int tui_clear_exec_info_content (struct tui_win_info*) ;
 int tui_clear_source_content (struct tui_win_info*,int ) ;
 int tui_current_layout () ;
 int tui_show_disassem (scalar_t__) ;
 int tui_show_disassem_and_update_source (scalar_t__) ;
 int tui_show_symtab_source (int ,union tui_line_or_address,int ) ;
 TYPE_1__* tui_source_windows () ;

void
tui_update_source_windows_with_addr (CORE_ADDR addr)
{
  if (addr != 0)
    {
      struct symtab_and_line sal;
      union tui_line_or_address l;

      switch (tui_current_layout ())
 {
 case 130:
 case 129:
   tui_show_disassem (addr);
   break;
 case 128:
   tui_show_disassem_and_update_source (addr);
   break;
 default:
   sal = find_pc_line (addr, 0);
   l.line_no = sal.line;
   tui_show_symtab_source (sal.symtab, l, FALSE);
   break;
 }
    }
  else
    {
      int i;

      for (i = 0; i < (tui_source_windows ())->count; i++)
 {
   struct tui_win_info * win_info = (struct tui_win_info *) (tui_source_windows ())->list[i];

   tui_clear_source_content (win_info, EMPTY_SOURCE_PROMPT);
   tui_clear_exec_info_content (win_info);
 }
    }
}
