
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int th_p; } ;
typedef TYPE_1__ td_event_msg_t ;
typedef scalar_t__ td_err_e ;
struct inferior_linux_data {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ TD_OK ;
 int current_inferior ;
 scalar_t__ debug_threads ;
 int find_new_threads_callback (int ,int *) ;
 int fprintf (int ,char*,...) ;
 struct inferior_linux_data* inferior_target_data (int ) ;
 int stderr ;
 scalar_t__ td_ta_event_getmsg (int ,TYPE_1__*) ;
 int thread_agent ;
 char* thread_db_err_str (scalar_t__) ;

__attribute__((used)) static void
thread_db_create_event (CORE_ADDR where)
{
  td_event_msg_t msg;
  td_err_e err;
  struct inferior_linux_data *tdata;

  if (debug_threads)
    fprintf (stderr, "Thread creation event.\n");

  tdata = inferior_target_data (current_inferior);





  err = td_ta_event_getmsg (thread_agent, &msg);
  if (err != TD_OK)
    fprintf (stderr, "thread getmsg err: %s\n",
      thread_db_err_str (err));



  find_new_threads_callback (msg.th_p, ((void*)0));
}
