
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct process_info {TYPE_1__* resume; } ;
struct inferior_list_entry {int id; } ;
struct TYPE_2__ {int thread; } ;


 struct process_info* get_thread_process (struct thread_info*) ;
 TYPE_1__* resume_ptr ;

__attribute__((used)) static void
fbsd_set_resume_request (struct inferior_list_entry *entry)
{
  struct process_info *process;
  struct thread_info *thread;
  int ndx;

  thread = (struct thread_info *) entry;
  process = get_thread_process (thread);

  ndx = 0;
  while (resume_ptr[ndx].thread != -1 && resume_ptr[ndx].thread != entry->id)
    ndx++;

  process->resume = &resume_ptr[ndx];
}
