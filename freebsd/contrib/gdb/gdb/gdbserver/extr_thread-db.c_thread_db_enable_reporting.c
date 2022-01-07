
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int td_thr_events_t ;
struct TYPE_4__ {scalar_t__ bptaddr; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ td_notify_t ;
typedef scalar_t__ td_err_e ;
typedef int CORE_ADDR ;


 int TD_CREATE ;
 int TD_DEATH ;
 scalar_t__ TD_OK ;
 int set_breakpoint_at (int ,int ) ;
 int td_event_addset (int *,int ) ;
 int td_event_emptyset (int *) ;
 scalar_t__ td_ta_event_addr (int ,int ,TYPE_2__*) ;
 scalar_t__ td_ta_set_event (int ,int *) ;
 int thread_agent ;
 int thread_db_create_event ;
 int thread_db_death_event ;
 int thread_db_err_str (scalar_t__) ;
 int warning (char*,int ) ;

__attribute__((used)) static int
thread_db_enable_reporting ()
{
  td_thr_events_t events;
  td_notify_t notify;
  td_err_e err;


  td_event_emptyset (&events);
  td_event_addset (&events, TD_CREATE);







  err = td_ta_set_event (thread_agent, &events);
  if (err != TD_OK)
    {
      warning ("Unable to set global thread event mask: %s",
               thread_db_err_str (err));
      return 0;
    }


  err = td_ta_event_addr (thread_agent, TD_CREATE, &notify);
  if (err != TD_OK)
    {
      warning ("Unable to get location for thread creation breakpoint: %s",
        thread_db_err_str (err));
      return 0;
    }
  set_breakpoint_at ((CORE_ADDR) (unsigned long) notify.u.bptaddr,
       thread_db_create_event);
  return 1;
}
