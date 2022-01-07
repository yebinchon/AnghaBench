
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGIO ;
 int SIG_UNBLOCK ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void
unblock_async_io (void)
{
  sigset_t sigio_set;
  sigemptyset (&sigio_set);
  sigaddset (&sigio_set, SIGIO);
  sigprocmask (SIG_UNBLOCK, &sigio_set, ((void*)0));
}
