
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long ti_lid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef int ptid_t ;
typedef long pid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int caddr_t ;
struct TYPE_7__ {int (* to_resume ) (int ,int,int) ;} ;
struct TYPE_6__ {long pid; } ;


 long GET_LWP (int ) ;
 int GET_PID (int ) ;
 int GET_THREAD (int ) ;
 int PT_CLEARSTEP ;
 int PT_CONTINUE ;
 int PT_RESUME ;
 int PT_SETSTEP ;
 int TD_OK ;
 int TD_SIGNO_MASK ;
 int TD_THR_ANY_STATE ;
 int TD_THR_ANY_USER_FLAGS ;
 int TD_THR_LOWEST_PRIORITY ;
 TYPE_4__ child_ops ;
 int error (char*,...) ;
 int fbsd_thread_active ;
 int inferior_ptid ;
 int last_single_step_thread ;
 int null_ptid ;
 int perror_with_name (char*) ;
 TYPE_3__ proc_handle ;
 int ptid_equal (int ,int ) ;
 int ptrace (int,long,int ,int ) ;
 int resume_thread_callback ;
 int stub1 (int ,int,int) ;
 int suspend_thread_callback ;
 int target_signal_to_host (int) ;
 int td_ta_map_id2thr_p (int ,int ,int *) ;
 int td_ta_thr_iter_p (int ,int ,int *,int ,int ,int ,int ) ;
 int td_thr_dbresume_p (int *) ;
 int td_thr_get_info_p (int *,TYPE_1__*) ;
 int td_thr_sstep_p (int *,int) ;
 int thread_agent ;
 int thread_db_err_str (int) ;

__attribute__((used)) static void
fbsd_thread_resume (ptid_t ptid, int step, enum target_signal signo)
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  ptid_t work_ptid;
  int resume_all, ret;
  long lwp, thvalid = 0;

  if (!fbsd_thread_active)
    {
      child_ops.to_resume (ptid, step, signo);
      return;
    }

  if (GET_PID(ptid) != -1 && step != 0)
    {
      resume_all = 0;
      work_ptid = ptid;
    }
  else
    {
      resume_all = 1;
      work_ptid = inferior_ptid;
    }

  lwp = GET_LWP (work_ptid);
  if (lwp == 0)
    {

      ret = td_ta_map_id2thr_p (thread_agent, GET_THREAD(work_ptid), &th);
      if (ret)
        error (thread_db_err_str (ret));







      ret = td_thr_sstep_p (&th, step);
      if (ret)
        error (thread_db_err_str (ret));
      ret = td_thr_get_info_p (&th, &ti);
      if (ret)
        error (thread_db_err_str (ret));
      thvalid = 1;
      lwp = ti.ti_lid;
    }

  if (lwp)
    {
      int req = step ? PT_SETSTEP : PT_CLEARSTEP;
      if (ptrace (req, (pid_t) lwp, (caddr_t) 1, target_signal_to_host(signo)))
        perror_with_name ("PT_SETSTEP/PT_CLEARSTEP");
    }

  if (!ptid_equal (last_single_step_thread, null_ptid))
    {
       ret = td_ta_thr_iter_p (thread_agent, resume_thread_callback, ((void*)0),
          TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
          TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
      if (ret != TD_OK)
        error ("resume error: %s", thread_db_err_str (ret));
    }

  if (!resume_all)
    {
      ret = td_ta_thr_iter_p (thread_agent, suspend_thread_callback, ((void*)0),
          TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
          TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
      if (ret != TD_OK)
        error ("suspend error: %s", thread_db_err_str (ret));
      last_single_step_thread = work_ptid;
    }
  else
    last_single_step_thread = null_ptid;

  if (thvalid)
    {
      ret = td_thr_dbresume_p (&th);
      if (ret != TD_OK)
        error ("resume error: %s", thread_db_err_str (ret));
    }
  else
    {

      ret = ptrace(PT_RESUME, lwp, 0, 0);
    }


  if (ptrace (PT_CONTINUE, proc_handle.pid , (caddr_t)1,
       target_signal_to_host(signo)))
    perror_with_name ("PT_CONTINUE");
}
