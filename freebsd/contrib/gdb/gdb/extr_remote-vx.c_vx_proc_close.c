
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inferior_ptid ;
 int null_ptid ;
 scalar_t__ vx_running ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
vx_proc_close (int quitting)
{
  inferior_ptid = null_ptid;
  if (vx_running)
    xfree (vx_running);
  vx_running = 0;
}
