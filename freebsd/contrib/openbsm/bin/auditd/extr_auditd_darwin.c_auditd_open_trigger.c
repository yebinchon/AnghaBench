
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_setup (int) ;

int
auditd_open_trigger(int launchd_flag)
{

 return (mach_setup(launchd_flag));
}
