
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int * dtrace_pid_probe_ptr ;
 int * dtrace_return_probe_ptr ;
 int fasttrap_count_mtx ;
 scalar_t__ fasttrap_pid_count ;
 int fasttrap_pid_probe ;
 int fasttrap_return_probe ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
fasttrap_enable_callbacks(void)
{






 mutex_enter(&fasttrap_count_mtx);
 if (fasttrap_pid_count == 0) {
  ASSERT(dtrace_pid_probe_ptr == ((void*)0));
  ASSERT(dtrace_return_probe_ptr == ((void*)0));
  dtrace_pid_probe_ptr = &fasttrap_pid_probe;
  dtrace_return_probe_ptr = &fasttrap_return_probe;
 }
 ASSERT(dtrace_pid_probe_ptr == &fasttrap_pid_probe);
 ASSERT(dtrace_return_probe_ptr == &fasttrap_return_probe);
 fasttrap_pid_count++;
 mutex_exit(&fasttrap_count_mtx);
}
