
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int ISATTY (scalar_t__) ;
 int bpstat_do_actions (int *) ;
 int do_cleanups (struct cleanup*) ;
 int feof (scalar_t__) ;
 char* get_prompt () ;
 scalar_t__ instream ;
 struct cleanup* make_cleanup (int ,int ) ;
 int null_cleanup ;
 scalar_t__ quit_flag ;
 int reinitialize_more_filter () ;
 scalar_t__ stdin ;
 int stop_bpstat ;
 char* stub1 (char*) ;
 void stub2 (char*,int) ;

void
simplified_command_loop (char *(*read_input_func) (char *),
    void (*execute_command_func) (char *, int))
{
  struct cleanup *old_chain;
  char *command;
  int stdin_is_tty = ISATTY (stdin);

  while (instream && !feof (instream))
    {
      quit_flag = 0;
      if (instream == stdin && stdin_is_tty)
 reinitialize_more_filter ();
      old_chain = make_cleanup (null_cleanup, 0);


      command = (*read_input_func) (instream == stdin ?
        get_prompt () : (char *) ((void*)0));

      if (command == 0)
 return;

      (*execute_command_func) (command, instream == stdin);


      bpstat_do_actions (&stop_bpstat);

      do_cleanups (old_chain);
    }
}
