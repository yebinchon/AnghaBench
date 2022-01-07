
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGTSTP ;
 void SIG_DFL (int) ;
 int SIG_SETMASK ;
 int STOP_SIGNAL ;
 int dont_repeat () ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int get_prompt () ;
 int getpid () ;
 int kill (int ,int ) ;
 int printf_unfiltered (char*,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,void (*) (int)) ;
 int sigprocmask (int ,int *,int ) ;
 int sigsetmask (int ) ;

__attribute__((used)) static void
stop_sig (int signo)
{

  signal (SIGTSTP, SIG_DFL);
  kill (getpid (), SIGTSTP);
  signal (SIGTSTP, stop_sig);



  printf_unfiltered ("%s", get_prompt ());
  gdb_flush (gdb_stdout);


  dont_repeat ();
}
