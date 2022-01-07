
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread_resume {int thread; scalar_t__ leave_stopped; scalar_t__ sig; scalar_t__ step; } ;
struct thread_info {int dummy; } ;
struct TYPE_5__ {int * tail; int head; } ;
struct TYPE_4__ {scalar_t__ head; scalar_t__ tail; } ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int WTERMSIG (int) ;
 TYPE_3__ all_processes ;
 TYPE_1__ all_threads ;
 int clear_inferiors () ;
 scalar_t__ cont_thread ;
 int disable_async_io () ;
 int enable_async_io () ;
 int fbsd_resume (struct thread_resume*) ;
 int fbsd_wait_for_event (struct thread_info*) ;
 scalar_t__ find_inferior_id (TYPE_1__*,scalar_t__) ;
 int fprintf (int ,char*,int) ;
 int free (int ) ;
 int stderr ;
 int stop_all_processes () ;
 int unblock_async_io () ;

__attribute__((used)) static unsigned char
fbsd_wait (char *status)
{
  int w;
  struct thread_info *child = ((void*)0);

retry:






  if (cont_thread > 0)
    {
      child = (struct thread_info *) find_inferior_id (&all_threads,
             cont_thread);


      if (child == ((void*)0))
 {
   struct thread_resume resume_info;
   resume_info.thread = -1;
   resume_info.step = resume_info.sig = resume_info.leave_stopped = 0;
   fbsd_resume (&resume_info);
 }
    }

  enable_async_io ();
  unblock_async_io ();
  w = fbsd_wait_for_event (child);
  stop_all_processes ();
  disable_async_io ();
  if (all_threads.head == all_threads.tail)
    {
      if (WIFEXITED (w))
 {
   fprintf (stderr, "\nChild exited with retcode = %x \n", WEXITSTATUS (w));
   *status = 'W';
   clear_inferiors ();
   free (all_processes.head);
   all_processes.head = all_processes.tail = ((void*)0);
   return ((unsigned char) WEXITSTATUS (w));
 }
      else if (!WIFSTOPPED (w))
 {
   fprintf (stderr, "\nChild terminated with signal = %x \n", WTERMSIG (w));
   *status = 'X';
   clear_inferiors ();
   free (all_processes.head);
   all_processes.head = all_processes.tail = ((void*)0);
   return ((unsigned char) WTERMSIG (w));
 }
    }
  else
    {
      if (!WIFSTOPPED (w))
 goto retry;
    }

  *status = 'T';
  return ((unsigned char) WSTOPSIG (w));
}
