
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int control_persist_detach () ;
 scalar_t__ daemon (int,int) ;
 int debug (char*) ;
 int errno ;
 int fatal (char*,int ) ;
 scalar_t__ fork_after_authentication_flag ;
 scalar_t__ need_controlpersist_detach ;
 int strerror (int ) ;

__attribute__((used)) static void
fork_postauth(void)
{
 if (need_controlpersist_detach)
  control_persist_detach();
 debug("forking to background");
 fork_after_authentication_flag = 0;
 if (daemon(1, 1) < 0)
  fatal("daemon() failed: %.200s", strerror(errno));
}
