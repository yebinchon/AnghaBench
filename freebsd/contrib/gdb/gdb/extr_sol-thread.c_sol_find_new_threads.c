
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_find_new_threads ) () ;} ;


 int PIDGET (int ) ;
 int TD_SIGNO_MASK ;
 int TD_THR_ANY_STATE ;
 int TD_THR_ANY_USER_FLAGS ;
 int TD_THR_LOWEST_PRIORITY ;
 int inferior_ptid ;
 int main_ta ;
 int p_td_ta_thr_iter (int ,int ,void*,int ,int ,int ,int ) ;
 int printf_filtered (char*) ;
 TYPE_1__ procfs_ops ;
 int procfs_suppress_run ;
 int sol_find_new_threads_callback ;
 int stub1 () ;

__attribute__((used)) static void
sol_find_new_threads (void)
{

  if (!procfs_suppress_run)
    return;

  if (PIDGET (inferior_ptid) == -1)
    {
      printf_filtered ("No process.\n");
      return;
    }
  procfs_ops.to_find_new_threads ();
  p_td_ta_thr_iter (main_ta, sol_find_new_threads_callback, (void *) 0,
      TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
      TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
}
