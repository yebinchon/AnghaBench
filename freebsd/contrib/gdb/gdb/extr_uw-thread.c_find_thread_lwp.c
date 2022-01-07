
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 int find_thread_lwp_callback ;
 struct thread_info* iterate_over_threads (int ,void*) ;

__attribute__((used)) static struct thread_info *
find_thread_lwp (int lwpid)
{
  return iterate_over_threads (find_thread_lwp_callback, (void *)lwpid);
}
