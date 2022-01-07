
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct thread_info {void* target_data; TYPE_1__ entry; } ;


 int add_inferior_to_list (int *,TYPE_1__*) ;
 int all_threads ;
 struct thread_info* current_inferior ;
 scalar_t__ malloc (int) ;
 int memset (struct thread_info*,int ,int) ;
 int new_register_cache () ;
 int set_inferior_regcache_data (struct thread_info*,int ) ;

void
add_thread (int thread_id, void *target_data)
{
  struct thread_info *new_thread
    = (struct thread_info *) malloc (sizeof (*new_thread));

  memset (new_thread, 0, sizeof (*new_thread));

  new_thread->entry.id = thread_id;

  add_inferior_to_list (&all_threads, & new_thread->entry);

  if (current_inferior == ((void*)0))
    current_inferior = new_thread;

  new_thread->target_data = target_data;
  set_inferior_regcache_data (new_thread, new_register_cache ());
}
