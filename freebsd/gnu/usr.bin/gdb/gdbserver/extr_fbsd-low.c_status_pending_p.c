
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_info {int status_pending_p; int head; } ;
struct inferior_list_entry {int dummy; } ;


 scalar_t__ check_removed_breakpoint (struct process_info*) ;
 int fbsd_resume_one_process (int *,int ,int ) ;

__attribute__((used)) static int
status_pending_p (struct inferior_list_entry *entry, void *dummy)
{
  struct process_info *process = (struct process_info *) entry;

  if (process->status_pending_p)
    if (check_removed_breakpoint (process))
      {






 fbsd_resume_one_process (&process->head, 0, 0);
 return 0;
      }

  return process->status_pending_p;
}
