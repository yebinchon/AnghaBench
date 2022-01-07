
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process_info {scalar_t__ status_pending_p; TYPE_1__* resume; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ leave_stopped; } ;


 int check_removed_breakpoint (struct process_info*) ;

__attribute__((used)) static int
resume_status_pending_p (struct inferior_list_entry *entry, void *flag_p)
{
  struct process_info *process = (struct process_info *) entry;



  if (process->resume->leave_stopped)
    return 0;
  if (process->status_pending_p)
    check_removed_breakpoint (process);

  if (process->status_pending_p)
    * (int *) flag_p = 1;

  return 0;
}
