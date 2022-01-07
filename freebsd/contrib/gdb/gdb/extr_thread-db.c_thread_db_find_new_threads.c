
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ td_err_e ;


 scalar_t__ TD_OK ;
 int TD_SIGNO_MASK ;
 int TD_THR_ANY_STATE ;
 int TD_THR_ANY_USER_FLAGS ;
 int TD_THR_LOWEST_PRIORITY ;
 int error (char*,int ) ;
 int find_new_threads_callback ;
 scalar_t__ td_ta_thr_iter_p (int ,int ,int *,int ,int ,int ,int ) ;
 int thread_agent ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static void
thread_db_find_new_threads (void)
{
  td_err_e err;


  err = td_ta_thr_iter_p (thread_agent, find_new_threads_callback, ((void*)0),
     TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
     TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
  if (err != TD_OK)
    error ("Cannot find new threads: %s", thread_db_err_str (err));
}
