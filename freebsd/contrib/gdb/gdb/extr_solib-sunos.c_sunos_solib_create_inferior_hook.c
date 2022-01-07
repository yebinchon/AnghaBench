
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 scalar_t__ DECR_PC_AFTER_BREAK ;
 int NO_STOP_QUIETLY ;
 int PC_REGNUM ;
 int STOP_QUIETLY ;
 scalar_t__ TARGET_SIGNAL_0 ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 int auto_solib_add ;
 int clear_proceed_status () ;
 int debug_base ;
 int disable_break () ;
 int enable_break () ;
 int locate_base () ;
 int pid_to_ptid (int) ;
 int solib_add (char*,int ,struct target_ops*,int ) ;
 int stop_pc ;
 scalar_t__ stop_signal ;
 int stop_soon ;
 int sunos_relocate_main_executable () ;
 int target_resume (int ,int ,scalar_t__) ;
 int wait_for_inferior () ;
 int warning (char*) ;
 int write_register (int ,int ) ;

__attribute__((used)) static void
sunos_solib_create_inferior_hook (void)
{

  sunos_relocate_main_executable ();

  if ((debug_base = locate_base ()) == 0)
    {

      return;
    }

  if (!enable_break ())
    {
      warning ("shared library handler failed to enable breakpoint");
      return;
    }
  clear_proceed_status ();
  stop_soon = STOP_QUIETLY;
  stop_signal = TARGET_SIGNAL_0;
  do
    {
      target_resume (pid_to_ptid (-1), 0, stop_signal);
      wait_for_inferior ();
    }
  while (stop_signal != TARGET_SIGNAL_TRAP);
  stop_soon = NO_STOP_QUIETLY;






  if (DECR_PC_AFTER_BREAK)
    {
      stop_pc -= DECR_PC_AFTER_BREAK;
      write_register (PC_REGNUM, stop_pc);
    }

  if (!disable_break ())
    {
      warning ("shared library handler failed to disable breakpoint");
    }

  solib_add ((char *) 0, 0, (struct target_ops *) 0, auto_solib_add);
}
