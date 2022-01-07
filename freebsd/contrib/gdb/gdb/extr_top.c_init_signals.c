
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTRAP ;
 int SIGWINCH ;
 int SIGWINCH_HANDLER ;
 int SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int disconnect ;
 int do_nothing ;
 int float_handler ;
 int request_quit ;
 scalar_t__ signal (int ,int ) ;

__attribute__((used)) static void
init_signals (void)
{
  signal (SIGINT, request_quit);
  signal (SIGQUIT, do_nothing);




  signal (SIGFPE, float_handler);




}
