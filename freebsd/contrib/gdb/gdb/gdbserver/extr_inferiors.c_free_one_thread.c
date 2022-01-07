
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct inferior_list_entry {int dummy; } ;


 int free (struct thread_info*) ;
 int free_register_cache (int ) ;
 struct thread_info* get_thread (struct inferior_list_entry*) ;
 int inferior_regcache_data (struct thread_info*) ;

__attribute__((used)) static void
free_one_thread (struct inferior_list_entry *inf)
{
  struct thread_info *thread = get_thread (inf);
  free_register_cache (inferior_regcache_data (thread));
  free (thread);
}
