
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAVE_OPT (int ) ;
 int TRACE (int,char*) ;
 int TRUE ;
 int WAIT ;
 int base ;
 int event_base_loopexit (int ,int *) ;
 scalar_t__ n_pending_dns ;
 scalar_t__ n_pending_ntp ;
 int shutting_down ;
 scalar_t__ time_derived ;

void
check_exit_conditions(void)
{
 if ((0 == n_pending_ntp && 0 == n_pending_dns) ||
     (time_derived && !HAVE_OPT(WAIT))) {
  event_base_loopexit(base, ((void*)0));
  shutting_down = TRUE;
 } else {
  TRACE(2, ("%d NTP and %d name queries pending\n",
     n_pending_ntp, n_pending_dns));
 }
}
