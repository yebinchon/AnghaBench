
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


 int IS_THREAD (int ) ;
 scalar_t__ TD_OK ;
 scalar_t__ TD_THR_UNKNOWN ;
 scalar_t__ TD_THR_ZOMBIE ;
 int add_thread (int ) ;
 int error (char*,int ,char*) ;
 scalar_t__ fbsd_thread_core ;
 int in_thread_list (int ) ;
 int printf_unfiltered (char*,int ) ;
 int target_pid_to_str (int ) ;
 scalar_t__ td_thr_event_enable_p (int const*,int) ;
 char* thread_db_err_str (scalar_t__) ;

__attribute__((used)) static void
attach_thread (ptid_t ptid, const td_thrhandle_t *th_p,
               const td_thrinfo_t *ti_p, int verbose)
{
  td_err_e err;


  if (!in_thread_list (ptid)) {
    add_thread (ptid);
    if (verbose)
      printf_unfiltered ("[New %s]\n", target_pid_to_str (ptid));
  }

  if (ti_p->ti_state == TD_THR_UNKNOWN || ti_p->ti_state == TD_THR_ZOMBIE)
    return;

  if (! IS_THREAD(ptid))
    return;
  if (fbsd_thread_core != 0)
    return;

  err = td_thr_event_enable_p (th_p, 1);
  if (err != TD_OK)
    error ("Cannot enable thread event reporting for %s: %s",
           target_pid_to_str (ptid), thread_db_err_str (err));
}
