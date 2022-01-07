
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct process_info {scalar_t__ stopped; scalar_t__ bp_reinsert; int stepping; int lwpid; struct pending_signals* pending_signals; scalar_t__ stop_expected; scalar_t__ status_pending_p; } ;
struct pending_signals {int signal; struct pending_signals* prev; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_pc ) () ;} ;
typedef int PTRACE_ARG3_TYPE ;


 int PT_CONTINUE ;
 int PT_STEP ;
 int check_removed_breakpoint (struct process_info*) ;
 struct thread_info* current_inferior ;
 scalar_t__ debug_threads ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int free (struct pending_signals*) ;
 struct thread_info* get_process_thread (struct process_info*) ;
 int inferior_pid ;
 struct pending_signals* malloc (int) ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int) ;
 int regcache_invalidate_one (struct inferior_list_entry*) ;
 int stderr ;
 scalar_t__ stub1 () ;
 TYPE_1__ the_low_target ;

__attribute__((used)) static void
fbsd_resume_one_process (struct inferior_list_entry *entry,
     int step, int signal)
{
  struct process_info *process = (struct process_info *) entry;
  struct thread_info *saved_inferior;

  if (process->stopped == 0)
    return;




  if (signal != 0
      && (process->status_pending_p || process->pending_signals != ((void*)0)
   || process->bp_reinsert != 0))
    {
      struct pending_signals *p_sig;
      p_sig = malloc (sizeof (*p_sig));
      p_sig->prev = process->pending_signals;
      p_sig->signal = signal;
      process->pending_signals = p_sig;
    }

  if (process->status_pending_p && !check_removed_breakpoint (process))
    return;

  saved_inferior = current_inferior;
  current_inferior = get_process_thread (process);

  if (debug_threads)
    fprintf (stderr, "Resuming process %d (%s, signal %d, stop %s)\n", inferior_pid,
      step ? "step" : "continue", signal,
      process->stop_expected ? "expected" : "not expected");
  if (process->bp_reinsert != 0)
    {
      if (debug_threads)
 fprintf (stderr, "  pending reinsert at %08lx", (long)process->bp_reinsert);
      if (step == 0)
 fprintf (stderr, "BAD - reinserting but not stepping.\n");
      step = 1;


      signal = 0;
    }

  check_removed_breakpoint (process);

  if (debug_threads && the_low_target.get_pc != ((void*)0))
    {
      fprintf (stderr, "  ");
      (long) (*the_low_target.get_pc) ();
    }



  if (process->pending_signals != ((void*)0) && process->bp_reinsert == 0)
    {
      struct pending_signals **p_sig;

      p_sig = &process->pending_signals;
      while ((*p_sig)->prev != ((void*)0))
 p_sig = &(*p_sig)->prev;

      signal = (*p_sig)->signal;
      free (*p_sig);
      *p_sig = ((void*)0);
    }

  regcache_invalidate_one ((struct inferior_list_entry *)
      get_process_thread (process));
  errno = 0;
  process->stopped = 0;
  process->stepping = step;
  ptrace (step ? PT_STEP : PT_CONTINUE, process->lwpid, (PTRACE_ARG3_TYPE) 1, signal);

  current_inferior = saved_inferior;
  if (errno)
    perror_with_name ("ptrace");
}
