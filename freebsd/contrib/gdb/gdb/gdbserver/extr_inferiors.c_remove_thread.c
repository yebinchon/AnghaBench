
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int entry; } ;
struct inferior_list_entry {int dummy; } ;


 int all_threads ;
 int free_one_thread (int *) ;
 int remove_inferior (int *,struct inferior_list_entry*) ;

void
remove_thread (struct thread_info *thread)
{
  remove_inferior (&all_threads, (struct inferior_list_entry *) thread);
  free_one_thread (&thread->entry);
}
