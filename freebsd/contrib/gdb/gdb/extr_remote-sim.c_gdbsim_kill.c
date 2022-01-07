
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inferior_ptid ;
 int null_ptid ;
 int printf_filtered (char*) ;
 scalar_t__ sr_get_debug () ;

__attribute__((used)) static void
gdbsim_kill (void)
{
  if (sr_get_debug ())
    printf_filtered ("gdbsim_kill\n");



  inferior_ptid = null_ptid;
}
