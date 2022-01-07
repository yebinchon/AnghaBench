
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdbsim_stop () ;

__attribute__((used)) static void
gdbsim_cntrl_c (int signo)
{
  gdbsim_stop ();
}
