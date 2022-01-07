
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct process_info {scalar_t__ pending_is_breakpoint; scalar_t__ pending_stop_pc; scalar_t__ status_pending; scalar_t__ status_pending_p; } ;
struct TYPE_2__ {int (* set_pc ) (scalar_t__) ;scalar_t__ (* breakpoint_at ) (scalar_t__) ;} ;
typedef scalar_t__ CORE_ADDR ;


 struct thread_info* current_inferior ;
 scalar_t__ debug_threads ;
 int fprintf (int ,char*) ;
 struct thread_info* get_process_thread (struct process_info*) ;
 scalar_t__ get_stop_pc () ;
 int stderr ;
 scalar_t__ stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 TYPE_1__ the_low_target ;

__attribute__((used)) static int
check_removed_breakpoint (struct process_info *event_child)
{
  CORE_ADDR stop_pc;
  struct thread_info *saved_inferior;

  if (event_child->pending_is_breakpoint == 0)
    return 0;

  if (debug_threads)
    fprintf (stderr, "Checking for breakpoint.\n");

  saved_inferior = current_inferior;
  current_inferior = get_process_thread (event_child);

  stop_pc = get_stop_pc ();




  if (stop_pc != event_child->pending_stop_pc)
    {
      if (debug_threads)
 fprintf (stderr, "Ignoring, PC was changed.\n");

      event_child->pending_is_breakpoint = 0;
      current_inferior = saved_inferior;
      return 0;
    }


  if ((*the_low_target.breakpoint_at) (stop_pc))
    {
      if (debug_threads)
 fprintf (stderr, "Ignoring, breakpoint is still present.\n");
      current_inferior = saved_inferior;
      return 0;
    }

  if (debug_threads)
    fprintf (stderr, "Removed breakpoint.\n");




  if (the_low_target.set_pc != ((void*)0))
    (*the_low_target.set_pc) (stop_pc);


  event_child->pending_is_breakpoint = 0;
  event_child->status_pending_p = 0;
  event_child->status_pending = 0;

  current_inferior = saved_inferior;
  return 1;
}
