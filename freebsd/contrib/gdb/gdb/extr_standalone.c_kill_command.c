
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inferior_ptid ;
 int null_ptid ;

kill_command (void)
{
  inferior_ptid = null_ptid;
}
