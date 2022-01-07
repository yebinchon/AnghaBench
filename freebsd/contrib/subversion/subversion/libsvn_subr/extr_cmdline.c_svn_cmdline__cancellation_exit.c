
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int apr_signal (int,int ) ;
 scalar_t__ cancelled ;
 int getpid () ;
 int kill (int ,int) ;
 int* signal_map ;
 int signum_cancelled ;

void
svn_cmdline__cancellation_exit(void)
{
  int signum = 0;

  if (cancelled && signum_cancelled)
    signum = signal_map[signum_cancelled - 1];
  if (signum)
    {

      apr_signal(signum, SIG_DFL);

      kill(getpid(), signum);

    }
}
