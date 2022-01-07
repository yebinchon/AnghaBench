
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int ptid_t ;


 int BUILD_THREAD (int ,int ) ;
 int GET_LWP (int ) ;
 int PIDGET (int ) ;
 scalar_t__ TD_NOTHR ;
 scalar_t__ TD_OK ;
 int error (char*,int ) ;
 scalar_t__ is_thread (int ) ;
 int main_ta ;
 scalar_t__ p_td_ta_map_lwp2thr (int ,int ,int *) ;
 scalar_t__ p_td_thr_get_info (int *,TYPE_1__*) ;
 scalar_t__ p_td_thr_validate (int *) ;
 int pid_to_ptid (int) ;
 int sol_thread_alive (int ) ;
 int td_err_string (scalar_t__) ;

__attribute__((used)) static ptid_t
lwp_to_thread (ptid_t lwp)
{
  td_thrinfo_t ti;
  td_thrhandle_t th;
  td_err_e val;

  if (is_thread (lwp))
    return lwp;



  if (!sol_thread_alive (lwp))
    return pid_to_ptid (-1);

  val = p_td_ta_map_lwp2thr (main_ta, GET_LWP (lwp), &th);
  if (val == TD_NOTHR)
    return pid_to_ptid (-1);
  else if (val != TD_OK)
    error ("lwp_to_thread: td_ta_map_lwp2thr: %s.", td_err_string (val));

  val = p_td_thr_validate (&th);
  if (val == TD_NOTHR)
    return lwp;

  else if (val != TD_OK)
    error ("lwp_to_thread: td_thr_validate: %s.", td_err_string (val));

  val = p_td_thr_get_info (&th, &ti);
  if (val == TD_NOTHR)
    return pid_to_ptid (-1);
  else if (val != TD_OK)
    error ("lwp_to_thread: td_thr_get_info: %s.", td_err_string (val));

  return BUILD_THREAD (ti.ti_tid, PIDGET (lwp));
}
