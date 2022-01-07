
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_mourn_inferior () ;
 int printf_filtered (char*) ;
 int remove_breakpoints () ;
 scalar_t__ sr_get_debug () ;

__attribute__((used)) static void
gdbsim_mourn_inferior (void)
{
  if (sr_get_debug ())
    printf_filtered ("gdbsim_mourn_inferior:\n");

  remove_breakpoints ();
  generic_mourn_inferior ();
}
