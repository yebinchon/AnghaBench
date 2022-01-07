
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ti_state; int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
typedef int ptid_t ;
struct TYPE_6__ {int pid; } ;


 int BUILD_THREAD (int ,int ) ;
 scalar_t__ TD_OK ;
 scalar_t__ TD_THR_UNKNOWN ;
 scalar_t__ TD_THR_ZOMBIE ;
 int attach_thread (int ,int const*,TYPE_1__*,int) ;
 int error (char*,int ) ;
 TYPE_3__ proc_handle ;
 scalar_t__ td_thr_get_info_p (int const*,TYPE_1__*) ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static int
find_new_threads_callback (const td_thrhandle_t *th_p, void *data)
{
  td_thrinfo_t ti;
  td_err_e err;
  ptid_t ptid;

  err = td_thr_get_info_p (th_p, &ti);
  if (err != TD_OK)
    error ("Cannot get thread info: %s", thread_db_err_str (err));


  if (ti.ti_state == TD_THR_UNKNOWN || ti.ti_state == TD_THR_ZOMBIE)
    return 0;

  ptid = BUILD_THREAD (ti.ti_tid, proc_handle.pid);
  attach_thread (ptid, th_p, &ti, 1);
  return 0;
}
