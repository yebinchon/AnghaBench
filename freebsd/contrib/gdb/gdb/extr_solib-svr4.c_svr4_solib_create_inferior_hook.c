
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_STOP_QUIETLY ;
 int STOP_QUIETLY ;
 scalar_t__ TARGET_SIGNAL_0 ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 int clear_proceed_status () ;
 int enable_break () ;
 int pid_to_ptid (int) ;
 scalar_t__ stop_signal ;
 int stop_soon ;
 int svr4_have_link_map_offsets () ;
 int svr4_relocate_main_executable () ;
 int target_resume (int ,int ,scalar_t__) ;
 int wait_for_inferior () ;
 int warning (char*) ;

__attribute__((used)) static void
svr4_solib_create_inferior_hook (void)
{

  svr4_relocate_main_executable ();

  if (!svr4_have_link_map_offsets ())
    {
      warning ("no shared library support for this OS / ABI");
      return;

    }

  if (!enable_break ())
    {
      warning ("shared library handler failed to enable breakpoint");
      return;
    }
}
