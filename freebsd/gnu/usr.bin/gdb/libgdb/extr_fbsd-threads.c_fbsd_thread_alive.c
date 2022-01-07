
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ti_state; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int ptid_t ;
typedef scalar_t__ lwpid_t ;
typedef int gregset_t ;
typedef int caddr_t ;


 scalar_t__ GET_LWP (int ) ;
 int GET_THREAD (int ) ;
 scalar_t__ IS_THREAD (int ) ;
 int PT_GETREGS ;
 scalar_t__ TD_OK ;
 scalar_t__ TD_THR_UNKNOWN ;
 scalar_t__ TD_THR_ZOMBIE ;
 int bfd_map_over_sections (int ,int ,scalar_t__*) ;
 int core_bfd ;
 int fbsd_core_check_lwp ;
 scalar_t__ fbsd_thread_active ;
 scalar_t__ ptrace (int ,scalar_t__,int ,int ) ;
 int target_has_execution ;
 scalar_t__ td_ta_map_id2thr_p (int ,int ,int *) ;
 scalar_t__ td_ta_map_lwp2thr_p (int ,scalar_t__,int *) ;
 scalar_t__ td_thr_get_info_p (int *,TYPE_1__*) ;
 int thread_agent ;

__attribute__((used)) static int
fbsd_thread_alive (ptid_t ptid)
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  td_err_e err;
  gregset_t gregs;
  lwpid_t lwp;

  if (IS_THREAD (ptid))
    {
      err = td_ta_map_id2thr_p (thread_agent, GET_THREAD (ptid), &th);
      if (err != TD_OK)
        return 0;

      err = td_thr_get_info_p (&th, &ti);
      if (err != TD_OK)
        return 0;


      if (ti.ti_state == TD_THR_UNKNOWN || ti.ti_state == TD_THR_ZOMBIE)
        return 0;

      return 1;
    }
  else if (GET_LWP (ptid) == 0)
    {

      return 1;
    }

  if (fbsd_thread_active)
    {
      err = td_ta_map_lwp2thr_p (thread_agent, GET_LWP (ptid), &th);





      if (err == TD_OK)
        return 0;
    }

  if (!target_has_execution)
    {
      lwp = GET_LWP (ptid);
      bfd_map_over_sections (core_bfd, fbsd_core_check_lwp, &lwp);
      return (lwp == 0);
    }


  return ptrace (PT_GETREGS, GET_LWP (ptid), (caddr_t)&gregs, 0) == 0;
}
