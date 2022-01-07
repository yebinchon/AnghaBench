
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGWINCH ;
 int SIGWINCH_HANDLER (int ) ;
 int ScreenCols () ;
 int ScreenRows () ;
 int UINT_MAX ;
 int chars_per_line ;
 int gdb_stdout ;
 scalar_t__ getenv (char*) ;
 int lines_per_page ;
 int rl_get_screen_size (int*,int*) ;
 int rl_reset_terminal (int *) ;
 int set_screen_size () ;
 int set_width () ;
 scalar_t__ tgetnum (char*) ;
 int tui_get_command_dimension (int*,int*) ;
 int ui_file_isatty (int ) ;

void
init_page_info (void)
{



    {
      int rows, cols;
      rl_reset_terminal (((void*)0));


      rl_get_screen_size (&rows, &cols);
      lines_per_page = rows;
      chars_per_line = cols;


      if (tgetnum ("li") < 0 || getenv ("EMACS"))
 {



   lines_per_page = UINT_MAX;
 }







      if (!ui_file_isatty (gdb_stdout))
 lines_per_page = UINT_MAX;

    }

  set_screen_size ();
  set_width ();
}
