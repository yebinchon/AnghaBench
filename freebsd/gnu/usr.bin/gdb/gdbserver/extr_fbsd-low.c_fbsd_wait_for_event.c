
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct TYPE_7__ {int id; } ;
struct process_info {int lwpid; int status_pending; int tid; int stepping; scalar_t__ bp_reinsert; int pending_is_breakpoint; void* pending_stop_pc; TYPE_2__ head; scalar_t__ stop_expected; scalar_t__ status_pending_p; } ;
struct TYPE_8__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_6__ {scalar_t__ (* breakpoint_at ) (void*) ;int (* breakpoint_reinsert_addr ) () ;int * get_pc; } ;
typedef void* CORE_ADDR ;


 scalar_t__ SIGSTOP ;
 scalar_t__ SIGTRAP ;
 scalar_t__ WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int all_processes ;
 TYPE_3__ all_threads ;
 scalar_t__ check_breakpoints (void*) ;
 scalar_t__ check_removed_breakpoint (struct process_info*) ;
 struct thread_info* current_inferior ;
 int dead_thread_notify (int) ;
 scalar_t__ debug_threads ;
 int error (char*) ;
 int fbsd_resume_one_process (TYPE_2__*,int,scalar_t__) ;
 int fbsd_wait_for_process (struct process_info**,int*) ;
 scalar_t__ find_inferior (int *,int ,int *) ;
 scalar_t__ find_inferior_id (TYPE_3__*,int) ;
 int fprintf (int ,char*,...) ;
 int free (struct process_info*) ;
 struct thread_info* get_process_thread (struct process_info*) ;
 void* get_stop_pc () ;
 struct process_info* get_thread_process (struct thread_info*) ;
 int reinsert_breakpoint (scalar_t__) ;
 int reinsert_breakpoint_by_bp (void*,int ) ;
 int remove_inferior (int *,TYPE_2__*) ;
 int remove_thread (struct thread_info*) ;
 int status_pending_p ;
 int stderr ;
 int stub1 () ;
 scalar_t__ stub2 (void*) ;
 TYPE_1__ the_low_target ;
 int uninsert_breakpoint (void*) ;
 scalar_t__ using_threads ;

__attribute__((used)) static int
fbsd_wait_for_event (struct thread_info *child)
{
  CORE_ADDR stop_pc;
  struct process_info *event_child;
  int wstat;





  if (child == ((void*)0))
    {
      event_child = (struct process_info *)
 find_inferior (&all_processes, status_pending_p, ((void*)0));
      if (debug_threads && event_child)
 fprintf (stderr, "Got a pending child %d\n", event_child->lwpid);
    }
  else
    {
      event_child = get_thread_process (child);
      if (event_child->status_pending_p
   && check_removed_breakpoint (event_child))
 event_child = ((void*)0);
    }

  if (event_child != ((void*)0))
    {
      if (event_child->status_pending_p)
 {
   if (debug_threads)
     fprintf (stderr, "Got an event from pending child %d (%04x)\n",
       event_child->lwpid, event_child->status_pending);
   wstat = event_child->status_pending;
   event_child->status_pending_p = 0;
   event_child->status_pending = 0;
   current_inferior = get_process_thread (event_child);
   return wstat;
 }
    }





  while (1)
    {
      if (child == ((void*)0))
 event_child = ((void*)0);
      else
 event_child = get_thread_process (child);

      fbsd_wait_for_process (&event_child, &wstat);

      if (event_child == ((void*)0))
 error ("event from unknown child");

      current_inferior = (struct thread_info *)
 find_inferior_id (&all_threads, event_child->tid);

      if (using_threads)
 {

   if (! WIFSTOPPED (wstat))
     {
       if (debug_threads)
  fprintf (stderr, "Thread %d (LWP %d) exiting\n",
    event_child->tid, event_child->head.id);


       if (all_threads.head == all_threads.tail)
  return wstat;

       dead_thread_notify (event_child->tid);

       remove_inferior (&all_processes, &event_child->head);
       free (event_child);
       remove_thread (current_inferior);
       current_inferior = (struct thread_info *) all_threads.head;



       if (child != ((void*)0))
  return wstat;


       continue;
     }

   if (WIFSTOPPED (wstat)
       && WSTOPSIG (wstat) == SIGSTOP
       && event_child->stop_expected)
     {
       if (debug_threads)
  fprintf (stderr, "Expected stop.\n");
       event_child->stop_expected = 0;
       fbsd_resume_one_process (&event_child->head,
     event_child->stepping, 0);
       continue;
     }



   if (WIFSTOPPED (wstat))
     {
       if (debug_threads)
  fprintf (stderr, "Ignored signal %d for %d (LWP %d).\n",
    WSTOPSIG (wstat), event_child->tid,
    event_child->head.id);
       fbsd_resume_one_process (&event_child->head,
     event_child->stepping,
     WSTOPSIG (wstat));
       continue;
     }
 }



      if (!WIFSTOPPED (wstat) || WSTOPSIG (wstat) != SIGTRAP)
 return wstat;



      if (the_low_target.get_pc == ((void*)0))
 return wstat;

      stop_pc = get_stop_pc ();





      if (event_child->bp_reinsert != 0)
 {
   if (debug_threads)
     fprintf (stderr, "Reinserted breakpoint.\n");
   reinsert_breakpoint (event_child->bp_reinsert);
   event_child->bp_reinsert = 0;


   fbsd_resume_one_process (&event_child->head, 0, 0);
   continue;
 }

      if (debug_threads)
 fprintf (stderr, "Hit a (non-reinsert) breakpoint.\n");

      if (check_breakpoints (stop_pc) != 0)
 {



   event_child->pending_is_breakpoint = 1;
   event_child->pending_stop_pc = stop_pc;
   if (the_low_target.breakpoint_reinsert_addr == ((void*)0))
     {
       event_child->bp_reinsert = stop_pc;
       uninsert_breakpoint (stop_pc);
       fbsd_resume_one_process (&event_child->head, 1, 0);
     }
   else
     {
       reinsert_breakpoint_by_bp
  (stop_pc, (*the_low_target.breakpoint_reinsert_addr) ());
       fbsd_resume_one_process (&event_child->head, 0, 0);
     }

   continue;
 }
      if (event_child->stepping)
 {
   event_child->stepping = 0;
   return wstat;
 }
      if ((*the_low_target.breakpoint_at) (stop_pc))
 {
   event_child->pending_is_breakpoint = 1;
   event_child->pending_stop_pc = stop_pc;
 }

      return wstat;
    }


  return 0;
}
