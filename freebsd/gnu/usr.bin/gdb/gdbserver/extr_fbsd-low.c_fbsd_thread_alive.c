
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_threads ;
 int * find_inferior_id (int *,int) ;

__attribute__((used)) static int
fbsd_thread_alive (int tid)
{
  if (find_inferior_id (&all_threads, tid) != ((void*)0))
    return 1;
  else
    return 0;
}
