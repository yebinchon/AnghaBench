
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int state; int lock; int timer; } ;
typedef TYPE_1__ isc_ratelimiter_t ;


 int ISC_FALSE ;
 int ISC_R_SHUTTINGDOWN ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int RUNTIME_CHECK (int) ;
 int UNLOCK (int *) ;




 int isc_timer_reset (int ,int ,int *,int *,int ) ;
 int isc_timertype_inactive ;

isc_result_t
isc_ratelimiter_stall(isc_ratelimiter_t *rl) {
 isc_result_t result = ISC_R_SUCCESS;

 LOCK(&rl->lock);
 switch (rl->state) {
 case 129:
  result = ISC_R_SHUTTINGDOWN;
  break;
 case 130:
  result = isc_timer_reset(rl->timer, isc_timertype_inactive,
       ((void*)0), ((void*)0), ISC_FALSE);
  RUNTIME_CHECK(result == ISC_R_SUCCESS);
 case 131:
 case 128:
  rl->state = 128;
  break;
 }
 UNLOCK(&rl->lock);
 return (result);
}
