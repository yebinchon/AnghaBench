
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_processes ;
 int for_each_inferior (int *,int ) ;
 int send_sigstop ;
 int stopping_threads ;
 int wait_for_sigstop ;

__attribute__((used)) static void
stop_all_processes (void)
{
  stopping_threads = 1;
  for_each_inferior (&all_processes, send_sigstop);
  for_each_inferior (&all_processes, wait_for_sigstop);
  stopping_threads = 0;
}
