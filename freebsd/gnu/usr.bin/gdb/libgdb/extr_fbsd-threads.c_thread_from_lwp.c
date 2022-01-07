
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int ptid_t ;


 int BUILD_LWP (int ,int ) ;
 int BUILD_THREAD (int ,int ) ;
 int GET_LWP (int ) ;
 int GET_PID (int ) ;
 int IS_LWP (int ) ;
 scalar_t__ TD_OK ;
 int error (char*,int ) ;
 scalar_t__ fbsd_thread_active ;
 int gdb_assert (int ) ;
 scalar_t__ td_ta_map_lwp2thr_p (int ,int ,int *) ;
 scalar_t__ td_thr_get_info_p (int *,TYPE_1__*) ;
 int thread_agent ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static ptid_t
thread_from_lwp (ptid_t ptid, td_thrhandle_t *th, td_thrinfo_t *ti)
{
  td_err_e err;

  gdb_assert (IS_LWP (ptid));

  if (fbsd_thread_active)
    {
      err = td_ta_map_lwp2thr_p (thread_agent, GET_LWP (ptid), th);
      if (err == TD_OK)
        {
          err = td_thr_get_info_p (th, ti);
          if (err != TD_OK)
            error ("Cannot get thread info: %s", thread_db_err_str (err));
          return BUILD_THREAD (ti->ti_tid, GET_PID (ptid));
        }
    }


  return BUILD_LWP (GET_LWP (ptid), GET_PID (ptid));
}
