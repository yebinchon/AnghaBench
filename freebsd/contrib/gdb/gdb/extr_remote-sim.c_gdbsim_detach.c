
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pop_target () ;
 int printf_filtered (char*,char*) ;
 scalar_t__ sr_get_debug () ;
 char* target_shortname ;

__attribute__((used)) static void
gdbsim_detach (char *args, int from_tty)
{
  if (sr_get_debug ())
    printf_filtered ("gdbsim_detach: args \"%s\"\n", args);

  pop_target ();
  if (from_tty)
    printf_filtered ("Ending simulator %s debugging\n", target_shortname);
}
