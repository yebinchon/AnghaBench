
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ immediate_quit ;
 int quit () ;
 int quit_flag ;
 int signal (int,void (*) (int)) ;

void
request_quit (int signo)
{
  quit_flag = 1;



  signal (signo, request_quit);

  if (immediate_quit)
    quit ();
}
