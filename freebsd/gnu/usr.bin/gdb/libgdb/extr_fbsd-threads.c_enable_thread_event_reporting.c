
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thr_events_t ;
typedef int td_notify_t ;
typedef scalar_t__ td_err_e ;


 int TD_CREATE ;
 int TD_DEATH ;
 scalar_t__ TD_OK ;
 scalar_t__ enable_thread_event (int ,int ,scalar_t__*) ;
 int remove_thread_event_breakpoints () ;
 scalar_t__ td_create_bp_addr ;
 scalar_t__ td_death_bp_addr ;
 int td_event_addset (int *,int ) ;
 int td_event_emptyset (int *) ;
 int * td_ta_event_addr_p ;
 int * td_ta_event_getmsg_p ;
 scalar_t__ td_ta_set_event_p (int ,int *) ;
 int * td_thr_event_enable_p ;
 int thread_agent ;
 int thread_db_err_str (scalar_t__) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
enable_thread_event_reporting (void)
{
  td_thr_events_t events;
  td_notify_t notify;
  td_err_e err;



  if (td_ta_event_addr_p == ((void*)0) || td_ta_set_event_p == ((void*)0)
      || td_ta_event_getmsg_p == ((void*)0) || td_thr_event_enable_p == ((void*)0))
    return;


  td_event_emptyset (&events);
  td_event_addset (&events, TD_CREATE);
  td_event_addset (&events, TD_DEATH);

  err = td_ta_set_event_p (thread_agent, &events);
  if (err != TD_OK)
    {
      warning ("Unable to set global thread event mask: %s",
        thread_db_err_str (err));
      return;
    }


  remove_thread_event_breakpoints ();
  td_create_bp_addr = 0;
  td_death_bp_addr = 0;


  err = enable_thread_event (thread_agent, TD_CREATE, &td_create_bp_addr);
  if (err != TD_OK)
    {
      warning ("Unable to get location for thread creation breakpoint: %s",
        thread_db_err_str (err));
      return;
    }


  err = enable_thread_event (thread_agent, TD_DEATH, &td_death_bp_addr);
  if (err != TD_OK)
    {
      warning ("Unable to get location for thread death breakpoint: %s",
        thread_db_err_str (err));
      return;
    }
}
