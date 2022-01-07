
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_threads ;
 int fbsd_kill_one_process ;
 int for_each_inferior (int *,int ) ;

__attribute__((used)) static void
fbsd_kill (void)
{
  for_each_inferior (&all_threads, fbsd_kill_one_process);
}
