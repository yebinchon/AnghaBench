
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct process_info {int dummy; } ;
struct inferior_list_entry {int dummy; } ;


 int PT_DETACH ;
 struct process_info* get_thread_process (struct thread_info*) ;
 int pid_of (struct process_info*) ;
 int ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static void
fbsd_detach_one_process (struct inferior_list_entry *entry)
{
  struct thread_info *thread = (struct thread_info *) entry;
  struct process_info *process = get_thread_process (thread);

  ptrace (PT_DETACH, pid_of (process), 0, 0);
}
