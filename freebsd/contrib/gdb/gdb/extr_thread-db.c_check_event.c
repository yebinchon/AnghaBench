
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ti_tid; } ;
typedef TYPE_1__ td_thrinfo_t ;
struct TYPE_7__ {int event; int th_p; } ;
typedef TYPE_2__ td_event_msg_t ;
typedef scalar_t__ td_err_e ;
typedef int ptid_t ;
typedef scalar_t__ CORE_ADDR ;


 int BUILD_THREAD (int ,int ) ;
 scalar_t__ DECR_PC_AFTER_BREAK ;
 int GET_PID (int ) ;


 scalar_t__ TD_NOMSG ;
 scalar_t__ TD_OK ;
 int attach_thread (int ,int ,TYPE_1__*,int) ;
 int detach_thread (int ,int) ;
 int error (char*,...) ;
 int in_thread_list (int ) ;
 scalar_t__ read_pc_pid (int ) ;
 scalar_t__ td_create_bp_addr ;
 scalar_t__ td_death_bp_addr ;
 scalar_t__ td_ta_event_getmsg_p (int ,TYPE_2__*) ;
 scalar_t__ td_thr_get_info_p (int ,TYPE_1__*) ;
 int thread_agent ;
 int thread_db_err_str (scalar_t__) ;

__attribute__((used)) static void
check_event (ptid_t ptid)
{
  td_event_msg_t msg;
  td_thrinfo_t ti;
  td_err_e err;
  CORE_ADDR stop_pc;
  int loop = 0;


  stop_pc = read_pc_pid (ptid) - DECR_PC_AFTER_BREAK;
  if (stop_pc != td_create_bp_addr && stop_pc != td_death_bp_addr)
    return;
  loop = 1;

  do
    {
      err = td_ta_event_getmsg_p (thread_agent, &msg);
      if (err != TD_OK)
 {
   if (err == TD_NOMSG)
     return;

   error ("Cannot get thread event message: %s",
   thread_db_err_str (err));
 }

      err = td_thr_get_info_p (msg.th_p, &ti);
      if (err != TD_OK)
 error ("Cannot get thread info: %s", thread_db_err_str (err));

      ptid = BUILD_THREAD (ti.ti_tid, GET_PID (ptid));

      switch (msg.event)
 {
 case 129:




   if (!in_thread_list (ptid))
     attach_thread (ptid, msg.th_p, &ti, 1);

   break;

 case 128:

   if (!in_thread_list (ptid))
     error ("Spurious thread death event.");

   detach_thread (ptid, 1);

   break;

 default:
   error ("Spurious thread event.");
 }
    }
  while (loop);
}
