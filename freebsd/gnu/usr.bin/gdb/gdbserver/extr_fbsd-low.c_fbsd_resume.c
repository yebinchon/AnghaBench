
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_resume {int dummy; } ;


 int all_processes ;
 int all_threads ;
 int block_async_io () ;
 scalar_t__ debug_threads ;
 int enable_async_io () ;
 int fbsd_continue_one_thread ;
 int fbsd_queue_one_thread ;
 int fbsd_set_resume_request ;
 int find_inferior (int *,int ,int*) ;
 int for_each_inferior (int *,int ) ;
 int fprintf (int ,char*) ;
 struct thread_resume* resume_ptr ;
 int resume_status_pending_p ;
 int stderr ;

__attribute__((used)) static void
fbsd_resume (struct thread_resume *resume_info)
{
  int pending_flag;


  resume_ptr = resume_info;

  for_each_inferior (&all_threads, fbsd_set_resume_request);





  pending_flag = 0;
  find_inferior (&all_processes, resume_status_pending_p, &pending_flag);

  if (debug_threads)
    {
      if (pending_flag)
 fprintf (stderr, "Not resuming, pending status\n");
      else
 fprintf (stderr, "Resuming, no pending status\n");
    }

  if (pending_flag)
    for_each_inferior (&all_threads, fbsd_queue_one_thread);
  else
    {
      block_async_io ();
      enable_async_io ();
      for_each_inferior (&all_threads, fbsd_continue_one_thread);
    }
}
