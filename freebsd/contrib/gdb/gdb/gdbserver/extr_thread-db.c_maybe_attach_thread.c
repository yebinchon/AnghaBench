
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ti_lid; int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
struct thread_info {int dummy; } ;
struct process_info {int thread_known; int lwpid; int tid; } ;
struct TYPE_7__ {scalar_t__ head; scalar_t__ tail; } ;


 scalar_t__ TD_OK ;
 TYPE_3__ all_threads ;
 int change_inferior_id (TYPE_3__*,int ) ;
 scalar_t__ debug_threads ;
 int error (char*,int ,char*) ;
 scalar_t__ find_inferior_id (TYPE_3__*,int ) ;
 int fprintf (int ,char*,int ,int ) ;
 struct process_info* get_thread_process (struct thread_info*) ;
 struct process_info* inferior_target_data (struct thread_info*) ;
 int linux_attach_lwp (int ,int ) ;
 int new_thread_notify (int ) ;
 int stderr ;
 scalar_t__ td_thr_event_enable (int const*,int) ;
 char* thread_db_err_str (scalar_t__) ;
 int warning (char*,int ,int ) ;

__attribute__((used)) static void
maybe_attach_thread (const td_thrhandle_t *th_p, td_thrinfo_t *ti_p)
{
  td_err_e err;
  struct thread_info *inferior;
  struct process_info *process;



  if (all_threads.head == all_threads.tail)
    {
      inferior = (struct thread_info *) all_threads.head;
      process = get_thread_process (inferior);
      if (process->thread_known == 0)
 {

   change_inferior_id (&all_threads, ti_p->ti_tid);
   goto found;
 }
    }

  inferior = (struct thread_info *) find_inferior_id (&all_threads,
            ti_p->ti_tid);
  if (inferior != ((void*)0))
    return;

  if (debug_threads)
    fprintf (stderr, "Attaching to thread %ld (LWP %d)\n",
      ti_p->ti_tid, ti_p->ti_lid);
  linux_attach_lwp (ti_p->ti_lid, ti_p->ti_tid);
  inferior = (struct thread_info *) find_inferior_id (&all_threads,
            ti_p->ti_tid);
  if (inferior == ((void*)0))
    {
      warning ("Could not attach to thread %ld (LWP %d)\n",
        ti_p->ti_tid, ti_p->ti_lid);
      return;
    }

  process = inferior_target_data (inferior);

found:
  new_thread_notify (ti_p->ti_tid);

  process->tid = ti_p->ti_tid;
  process->lwpid = ti_p->ti_lid;

  process->thread_known = 1;
  err = td_thr_event_enable (th_p, 1);
  if (err != TD_OK)
    error ("Cannot enable thread event reporting for %d: %s",
           ti_p->ti_lid, thread_db_err_str (err));
}
