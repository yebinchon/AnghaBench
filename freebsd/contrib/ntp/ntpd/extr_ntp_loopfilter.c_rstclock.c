
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (int,char*) ;
 int EVNT_FSET ;
 scalar_t__ clock_epoch ;
 double clock_offset ;
 scalar_t__ current_time ;
 double last_offset ;
 int report_event (int,int *,int *) ;
 int state ;
 int sys_poll ;
 int tc_counter ;

__attribute__((used)) static void
rstclock(
 int trans,
 double offset
 )
{
 DPRINTF(2, ("rstclock: mu %lu state %d poll %d count %d\n",
      current_time - clock_epoch, trans, sys_poll,
      tc_counter));
 if (trans != state && trans != EVNT_FSET)
  report_event(trans, ((void*)0), ((void*)0));
 state = trans;
 last_offset = clock_offset = offset;
 clock_epoch = current_time;
}
