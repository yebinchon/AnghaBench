
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int prgregset_t ;
typedef int prfpregset_t ;


 char* GET_THREAD (int ) ;
 int IS_THREAD (int ) ;
 scalar_t__ TD_OK ;
 int current_regcache ;
 int error (char*,int ,char*,int ) ;
 int fbsd_lwp_fetch_registers (int) ;
 int i387_supply_fxsave (int ,int,char*) ;
 int inferior_ptid ;
 int pid_to_thread_id (int ) ;
 int supply_fpregset (int *) ;
 int supply_gregset (int ) ;
 scalar_t__ td_ta_map_id2thr_p (int ,char*,int *) ;
 scalar_t__ td_thr_getfpregs_p (int *,int *) ;
 scalar_t__ td_thr_getgregs_p (int *,int ) ;
 scalar_t__ td_thr_getxmmregs_p (int *,char*) ;
 int thread_agent ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static void
fbsd_thread_fetch_registers (int regno)
{
  prgregset_t gregset;
  prfpregset_t fpregset;
  td_thrhandle_t th;
  td_err_e err;




  if (!IS_THREAD (inferior_ptid))
    {
      fbsd_lwp_fetch_registers (regno);
      return;
    }

  err = td_ta_map_id2thr_p (thread_agent, GET_THREAD (inferior_ptid), &th);
  if (err != TD_OK)
    error ("Cannot find thread %d: Thread ID=%ld, %s",
           pid_to_thread_id (inferior_ptid),
           GET_THREAD (inferior_ptid), thread_db_err_str (err));

  err = td_thr_getgregs_p (&th, gregset);
  if (err != TD_OK)
    error ("Cannot fetch general-purpose registers for thread %d: Thread ID=%ld, %s",
           pid_to_thread_id (inferior_ptid),
           GET_THREAD (inferior_ptid), thread_db_err_str (err));
      err = td_thr_getfpregs_p (&th, &fpregset);
      if (err != TD_OK)
 error ("Cannot get floating-point registers for thread %d: Thread ID=%ld, %s",
        pid_to_thread_id (inferior_ptid),
        GET_THREAD (inferior_ptid), thread_db_err_str (err));
      supply_fpregset (&fpregset);




  supply_gregset (gregset);
}
