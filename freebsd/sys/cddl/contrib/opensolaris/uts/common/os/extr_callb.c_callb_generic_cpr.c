
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int clock_t ;
struct TYPE_2__ {int cc_events; int cc_lockp; int cc_stop_cv; int cc_callb_cv; } ;
typedef TYPE_1__ callb_cpr_t ;
typedef int boolean_t ;


 int CALLB_CPR_SAFE ;
 int CALLB_CPR_START ;


 int TR_CLOCK_TICK ;
 int callb_timeout_sec ;
 int cv_reltimedwait (int *,int ,int,int ) ;
 int cv_signal (int *) ;
 int hz ;
 int mutex_enter (int ) ;
 int mutex_exit (int ) ;

boolean_t
callb_generic_cpr(void *arg, int code)
{
 callb_cpr_t *cp = (callb_cpr_t *)arg;
 clock_t ret = 0;

 mutex_enter(cp->cc_lockp);

 switch (code) {
 case 129:
  cp->cc_events |= CALLB_CPR_START;
  break;

 case 128:
  cp->cc_events &= ~CALLB_CPR_START;
  cv_signal(&cp->cc_stop_cv);
  break;
 }
 mutex_exit(cp->cc_lockp);
 return (ret != -1);
}
