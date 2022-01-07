
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ti_state; int ti_lid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int ptid_t ;


 int BUILD_LWP (int ,int ) ;
 int GET_THREAD (int ) ;
 int PIDGET (int ) ;
 scalar_t__ TD_NOTHR ;
 scalar_t__ TD_OK ;
 scalar_t__ TD_THR_ACTIVE ;
 int error (char*,int ) ;
 scalar_t__ is_lwp (int ) ;
 int main_ta ;
 scalar_t__ p_td_ta_map_id2thr (int ,int ,int *) ;
 scalar_t__ p_td_thr_get_info (int *,TYPE_1__*) ;
 int pid_to_ptid (int) ;
 int td_err_string (scalar_t__) ;
 int td_state_string (scalar_t__) ;

__attribute__((used)) static ptid_t
thread_to_lwp (ptid_t thread_id, int default_lwp)
{
  td_thrinfo_t ti;
  td_thrhandle_t th;
  td_err_e val;

  if (is_lwp (thread_id))
    return thread_id;



  val = p_td_ta_map_id2thr (main_ta, GET_THREAD (thread_id), &th);
  if (val == TD_NOTHR)
    return pid_to_ptid (-1);
  else if (val != TD_OK)
    error ("thread_to_lwp: td_ta_map_id2thr %s", td_err_string (val));

  val = p_td_thr_get_info (&th, &ti);
  if (val == TD_NOTHR)
    return pid_to_ptid (-1);
  else if (val != TD_OK)
    error ("thread_to_lwp: td_thr_get_info: %s", td_err_string (val));

  if (ti.ti_state != TD_THR_ACTIVE)
    {
      if (default_lwp != -1)
 return pid_to_ptid (default_lwp);
      error ("thread_to_lwp: thread state not active: %s",
      td_state_string (ti.ti_state));
    }

  return BUILD_LWP (ti.ti_lid, PIDGET (thread_id));
}
