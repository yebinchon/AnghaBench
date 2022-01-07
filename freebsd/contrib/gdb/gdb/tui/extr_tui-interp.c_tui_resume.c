
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 struct ui_file* cli_out_set_stream (int ,struct ui_file*) ;
 int gdb_setup_readline () ;
 struct ui_file* gdb_stdout ;
 int tui_enable () ;
 int tui_old_uiout ;
 scalar_t__ tui_start_enabled ;

__attribute__((used)) static int
tui_resume (void *data)
{
  struct ui_file *stream;




  stream = cli_out_set_stream (tui_old_uiout, gdb_stdout);
  if (stream != gdb_stdout)
    {
      cli_out_set_stream (tui_old_uiout, stream);
      stream = ((void*)0);
    }

  gdb_setup_readline ();

  if (stream != ((void*)0))
    cli_out_set_stream (tui_old_uiout, gdb_stdout);

  if (tui_start_enabled)
    tui_enable ();
  return 1;
}
