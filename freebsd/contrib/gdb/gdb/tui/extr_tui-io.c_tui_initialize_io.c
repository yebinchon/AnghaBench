
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int O_NDELAY ;
 int O_NONBLOCK ;
 int SIGCONT ;
 int _IOLBF ;
 int add_file_handler (int ,int ,int ) ;
 int cli_out_new (int ) ;
 int exit (int) ;
 int fcntl (int ,int ,int ) ;
 scalar_t__ fdopen (int ,char*) ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ pipe (int *) ;
 int setvbuf (scalar_t__,char*,int ,int ) ;
 int signal (int ,int ) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;
 int tui_cont_sig ;
 void* tui_fileopen (scalar_t__) ;
 int tui_old_uiout ;
 int tui_out ;
 int tui_out_new (void*) ;
 int tui_readline_output ;
 int * tui_readline_pipe ;
 scalar_t__ tui_rl_outstream ;
 void* tui_stderr ;
 void* tui_stdout ;
 int uiout ;

void
tui_initialize_io (void)
{





  tui_stdout = tui_fileopen (stdout);
  tui_stderr = tui_fileopen (stderr);
  tui_out = tui_out_new (tui_stdout);



  tui_old_uiout = uiout = cli_out_new (gdb_stdout);
  tui_rl_outstream = stdout;

}
