
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stderr ;
 int gdb_stdlog ;
 int gdb_stdout ;
 int gdb_stdtarg ;
 scalar_t__ rl_already_prompted ;
 scalar_t__ rl_completion_display_matches_hook ;
 int rl_deprep_term_function ;
 int rl_getc_function ;
 int rl_outstream ;
 int rl_prep_term_function ;
 scalar_t__ rl_prompt ;
 int rl_redisplay_function ;
 int savetty () ;
 int tui_deprep_terminal ;
 int tui_getc ;
 int tui_old_readline_echoing_p ;
 int tui_old_rl_deprep_terminal ;
 int tui_old_rl_getc_function ;
 int tui_old_rl_outstream ;
 int tui_old_rl_prep_terminal ;
 int tui_old_rl_redisplay_function ;
 int tui_old_stderr ;
 int tui_old_stdout ;
 int tui_old_uiout ;
 int tui_out ;
 int tui_prep_terminal ;
 int tui_redisplay_readline ;
 scalar_t__ tui_rl_display_match_list ;
 int tui_rl_outstream ;
 int tui_stderr ;
 int tui_stdout ;
 int uiout ;

void
tui_setup_io (int mode)
{
  extern int readline_echoing_p;

  if (mode)
    {

      tui_old_rl_redisplay_function = rl_redisplay_function;
      tui_old_rl_deprep_terminal = rl_deprep_term_function;
      tui_old_rl_prep_terminal = rl_prep_term_function;
      tui_old_rl_getc_function = rl_getc_function;
      tui_old_rl_outstream = rl_outstream;
      tui_old_readline_echoing_p = readline_echoing_p;
      rl_redisplay_function = tui_redisplay_readline;
      rl_deprep_term_function = tui_deprep_terminal;
      rl_prep_term_function = tui_prep_terminal;
      rl_getc_function = tui_getc;
      readline_echoing_p = 0;
      rl_outstream = tui_rl_outstream;
      rl_prompt = 0;
      rl_completion_display_matches_hook = tui_rl_display_match_list;
      rl_already_prompted = 0;


      tui_old_stdout = gdb_stdout;
      tui_old_stderr = gdb_stderr;
      tui_old_uiout = uiout;


      gdb_stdout = tui_stdout;
      gdb_stderr = tui_stderr;
      gdb_stdlog = gdb_stdout;
      gdb_stdtarg = gdb_stderr;
      uiout = tui_out;


      savetty ();
    }
  else
    {

      gdb_stdout = tui_old_stdout;
      gdb_stderr = tui_old_stderr;
      gdb_stdlog = gdb_stdout;
      gdb_stdtarg = gdb_stderr;
      uiout = tui_old_uiout;


      rl_redisplay_function = tui_old_rl_redisplay_function;
      rl_deprep_term_function = tui_old_rl_deprep_terminal;
      rl_prep_term_function = tui_old_rl_prep_terminal;
      rl_getc_function = tui_old_rl_getc_function;
      rl_outstream = tui_old_rl_outstream;
      rl_completion_display_matches_hook = 0;
      readline_echoing_p = tui_old_readline_echoing_p;
      rl_already_prompted = 0;


      savetty ();
    }
}
