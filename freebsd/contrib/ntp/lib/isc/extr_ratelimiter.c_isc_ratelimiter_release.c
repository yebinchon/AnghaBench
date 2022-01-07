
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int state; int lock; int interval; int timer; int pending; } ;
typedef TYPE_1__ isc_ratelimiter_t ;


 int ISC_FALSE ;
 int ISC_LIST_EMPTY (int ) ;
 int ISC_R_SHUTTINGDOWN ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;




 int isc_timer_reset (int ,int ,int *,int *,int ) ;
 int isc_timertype_ticker ;

isc_result_t
isc_ratelimiter_release(isc_ratelimiter_t *rl) {
 isc_result_t result = ISC_R_SUCCESS;

 LOCK(&rl->lock);
 switch (rl->state) {
 case 129:
  result = ISC_R_SHUTTINGDOWN;
  break;
 case 128:
  if (!ISC_LIST_EMPTY(rl->pending)) {
   result = isc_timer_reset(rl->timer,
       isc_timertype_ticker, ((void*)0),
       &rl->interval, ISC_FALSE);
   if (result == ISC_R_SUCCESS)
    rl->state = 130;
  } else
   rl->state = 131;
  break;
 case 130:
 case 131:
  break;
 }
 UNLOCK(&rl->lock);
 return (result);
}
