
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface {int int_state; int int_act_time; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 scalar_t__ CHECK_BAD_INTERVAL ;
 int IS_BROKE ;
 int IS_SICK ;
 int LIM_SEC (int ,scalar_t__) ;
 int NEVER ;
 int ifinit_timer ;
 TYPE_1__ now ;
 int trace_if (char*,struct interface*) ;

void
if_sick(struct interface *ifp)
{
 if (0 == (ifp->int_state & (IS_SICK | IS_BROKE))) {
  ifp->int_state |= IS_SICK;
  ifp->int_act_time = NEVER;
  trace_if("Chg", ifp);

  LIM_SEC(ifinit_timer, now.tv_sec+CHECK_BAD_INTERVAL);
 }
}
