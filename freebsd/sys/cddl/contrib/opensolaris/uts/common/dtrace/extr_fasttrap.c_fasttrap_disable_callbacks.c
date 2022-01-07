
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int * dtrace_pid_probe_ptr ;
 int * dtrace_return_probe_ptr ;
 int dtrace_sync () ;
 int fasttrap_count_mtx ;
 scalar_t__ fasttrap_pid_count ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
fasttrap_disable_callbacks(void)
{
 mutex_enter(&fasttrap_count_mtx);
 ASSERT(fasttrap_pid_count > 0);
 fasttrap_pid_count--;
 if (fasttrap_pid_count == 0) {




  dtrace_sync();
  dtrace_pid_probe_ptr = ((void*)0);
  dtrace_return_probe_ptr = ((void*)0);
 }
 mutex_exit(&fasttrap_count_mtx);
}
