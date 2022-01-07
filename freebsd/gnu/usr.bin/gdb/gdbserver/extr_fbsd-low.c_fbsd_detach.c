
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_threads ;
 int fbsd_detach_one_process ;
 int for_each_inferior (int *,int ) ;

__attribute__((used)) static void
fbsd_detach (void)
{
  for_each_inferior (&all_threads, fbsd_detach_one_process);
}
