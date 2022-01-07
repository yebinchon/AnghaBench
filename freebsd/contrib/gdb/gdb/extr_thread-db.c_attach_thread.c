
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ti_state; int ti_lid; } ;
typedef TYPE_1__ td_thrinfo_t ;
typedef int td_thrhandle_t ;
typedef scalar_t__ td_err_e ;
struct thread_info {int private; } ;
struct private_thread_info {int dummy; } ;
typedef int ptid_t ;


 int ATTACH_LWP (int ,int ) ;
 int BUILD_LWP (int ,int ) ;
 int GET_PID (int ) ;
 scalar_t__ TD_OK ;
 scalar_t__ TD_THR_UNKNOWN ;
 scalar_t__ TD_THR_ZOMBIE ;
 struct thread_info* add_thread (int ) ;
 int check_thread_signals () ;
 int error (char*,int ,char*) ;
 int memset (int ,int ,int) ;
 int printf_unfiltered (char*,int ) ;
 int target_pid_to_str (int ) ;
 scalar_t__ td_thr_event_enable_p (int const*,int) ;
 char* thread_db_err_str (scalar_t__) ;
 int xmalloc (int) ;

__attribute__((used)) static void
attach_thread (ptid_t ptid, const td_thrhandle_t *th_p,
        const td_thrinfo_t *ti_p, int verbose)
{
  struct thread_info *tp;
  td_err_e err;

  check_thread_signals ();


  tp = add_thread (ptid);
  tp->private = xmalloc (sizeof (struct private_thread_info));
  memset (tp->private, 0, sizeof (struct private_thread_info));

  if (verbose)
    printf_unfiltered ("[New %s]\n", target_pid_to_str (ptid));

  if (ti_p->ti_state == TD_THR_UNKNOWN || ti_p->ti_state == TD_THR_ZOMBIE)
    return;







  err = td_thr_event_enable_p (th_p, 1);
  if (err != TD_OK)
    error ("Cannot enable thread event reporting for %s: %s",
    target_pid_to_str (ptid), thread_db_err_str (err));
}
