
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_DFL ;
 int SIG_IGN ;
 int create_inferior (char*,char**) ;
 int fileno (int ) ;
 int fprintf (int ,char*,char*,int) ;
 unsigned char mywait (char*,int ) ;
 int signal (int ,int ) ;
 int signal_pid ;
 int stderr ;
 int tcsetpgrp (int ,int) ;

__attribute__((used)) static unsigned char
start_inferior (char *argv[], char *statusptr)
{
  signal (SIGTTOU, SIG_DFL);
  signal (SIGTTIN, SIG_DFL);

  signal_pid = create_inferior (argv[0], argv);

  fprintf (stderr, "Process %s created; pid = %d\n", argv[0],
    signal_pid);

  signal (SIGTTOU, SIG_IGN);
  signal (SIGTTIN, SIG_IGN);
  tcsetpgrp (fileno (stderr), signal_pid);


  return mywait (statusptr, 0);
}
