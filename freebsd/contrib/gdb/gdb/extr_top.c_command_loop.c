
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int ISATTY (scalar_t__) ;
 int bpstat_do_actions (int *) ;
 char* command_line_input (char*,int,char*) ;
 int do_cleanups (struct cleanup*) ;
 int execute_command (char*,int) ;
 int feof (scalar_t__) ;
 char* get_prompt () ;
 long get_run_time () ;
 scalar_t__ instream ;
 char* lim_at_start ;
 struct cleanup* make_cleanup (int ,int ) ;
 int null_cleanup ;
 int printf_unfiltered (char*,long,char,...) ;
 scalar_t__ quit_flag ;
 int reinitialize_more_filter () ;
 scalar_t__ sbrk (int ) ;
 scalar_t__ stdin ;
 int stop_bpstat ;
 int stub1 (scalar_t__,char*) ;
 int window_hook (scalar_t__,char*) ;

void
command_loop (void)
{
  struct cleanup *old_chain;
  char *command;
  int stdin_is_tty = ISATTY (stdin);
  long time_at_cmd_start;



  extern int display_time;
  extern int display_space;

  while (instream && !feof (instream))
    {
      if (window_hook && instream == stdin)
 (*window_hook) (instream, get_prompt ());

      quit_flag = 0;
      if (instream == stdin && stdin_is_tty)
 reinitialize_more_filter ();
      old_chain = make_cleanup (null_cleanup, 0);


      command = command_line_input (instream == stdin ?
        get_prompt () : (char *) ((void*)0),
        instream == stdin, "prompt");
      if (command == 0)
 return;

      time_at_cmd_start = get_run_time ();

      if (display_space)
 {




 }

      execute_command (command, instream == stdin);

      bpstat_do_actions (&stop_bpstat);
      do_cleanups (old_chain);

      if (display_time)
 {
   long cmd_time = get_run_time () - time_at_cmd_start;

   printf_unfiltered ("Command execution time: %ld.%06ld\n",
        cmd_time / 1000000, cmd_time % 1000000);
 }

      if (display_space)
 {
 }
    }
}
