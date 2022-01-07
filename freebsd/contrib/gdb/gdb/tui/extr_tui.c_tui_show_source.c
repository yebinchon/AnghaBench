
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int symtab; } ;


 int SRC_WIN ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 int tui_add_win_to_layout (int ) ;
 int tui_update_locator_filename (char const*) ;
 int tui_update_source_windows_with_line (int ,int) ;

void
tui_show_source (const char *file, int line)
{
  struct symtab_and_line cursal = get_current_source_symtab_and_line ();

  tui_add_win_to_layout (SRC_WIN);

  tui_update_source_windows_with_line (cursal.symtab, line);
  tui_update_locator_filename (file);
}
