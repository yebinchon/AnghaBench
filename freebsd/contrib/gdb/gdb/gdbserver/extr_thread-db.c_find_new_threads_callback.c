
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ti_state; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;


 scalar_t__ TD_OK ;
 scalar_t__ TD_THR_UNKNOWN ;
 scalar_t__ TD_THR_ZOMBIE ;
 int error (char*,int ) ;
 int maybe_attach_thread (int const*,TYPE_1__*) ;
 scalar_t__ td_thr_get_info (int const*,TYPE_1__*) ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static int
find_new_threads_callback (const td_thrhandle_t *th_p, void *data)
{
  td_thrinfo_t ti;
  td_err_e err;

  err = td_thr_get_info (th_p, &ti);
  if (err != TD_OK)
    error ("Cannot get thread info: %s", thread_db_err_str (err));


  if (ti.ti_state == TD_THR_UNKNOWN || ti.ti_state == TD_THR_ZOMBIE)
    return 0;

  maybe_attach_thread (th_p, &ti);

  return 0;
}
