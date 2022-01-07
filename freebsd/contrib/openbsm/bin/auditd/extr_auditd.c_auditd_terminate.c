
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auditd_reap_children () ;
 int close_all () ;
 int close_misc () ;
 int exit (int) ;
 scalar_t__ launchd_flag ;

void
auditd_terminate(void)
{
 int ret;

 auditd_reap_children();

 if (launchd_flag)
  ret = close_misc();
 else
  ret = close_all();

 exit(ret);
}
