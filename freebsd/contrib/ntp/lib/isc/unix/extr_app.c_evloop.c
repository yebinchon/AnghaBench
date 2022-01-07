
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
typedef int isc_uint64_t ;
typedef int isc_time_t ;
typedef int isc_socketwait_t ;
typedef int isc_result_t ;
typedef void* isc_boolean_t ;
struct TYPE_3__ {int taskmgr; int socketmgr; int timermgr; void* want_reload; int want_shutdown; } ;
typedef TYPE_1__ isc__appctx_t ;


 void* ISC_FALSE ;
 int ISC_R_RELOAD ;
 int ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int TIME_NOW (int *) ;
 int isc__socketmgr_dispatch (int ,int *) ;
 int isc__socketmgr_waitevents (int ,struct timeval*,int **) ;
 int isc__taskmgr_dispatch (int ) ;
 void* isc__taskmgr_ready (int ) ;
 int isc__timermgr_dispatch (int ) ;
 int isc__timermgr_nextevent (int ,int *) ;
 int isc_time_microdiff (int *,int *) ;

__attribute__((used)) static isc_result_t
evloop(isc__appctx_t *ctx) {
 isc_result_t result;

 while (!ctx->want_shutdown) {
  int n;
  isc_time_t when, now;
  struct timeval tv, *tvp;
  isc_socketwait_t *swait;
  isc_boolean_t readytasks;
  isc_boolean_t call_timer_dispatch = ISC_FALSE;
  if (ctx->want_reload) {
   ctx->want_reload = ISC_FALSE;
   return (ISC_R_RELOAD);
  }

  readytasks = isc__taskmgr_ready(ctx->taskmgr);
  if (readytasks) {
   tv.tv_sec = 0;
   tv.tv_usec = 0;
   tvp = &tv;
   call_timer_dispatch = ISC_TRUE;
  } else {
   result = isc__timermgr_nextevent(ctx->timermgr, &when);
   if (result != ISC_R_SUCCESS)
    tvp = ((void*)0);
   else {
    isc_uint64_t us;

    TIME_NOW(&now);
    us = isc_time_microdiff(&when, &now);
    if (us == 0)
     call_timer_dispatch = ISC_TRUE;
    tv.tv_sec = us / 1000000;
    tv.tv_usec = us % 1000000;
    tvp = &tv;
   }
  }

  swait = ((void*)0);
  n = isc__socketmgr_waitevents(ctx->socketmgr, tvp, &swait);

  if (n == 0 || call_timer_dispatch) {
   isc__timermgr_dispatch(ctx->timermgr);
  }
  if (n > 0)
   (void)isc__socketmgr_dispatch(ctx->socketmgr, swait);
  (void)isc__taskmgr_dispatch(ctx->taskmgr);
 }
 return (ISC_R_SUCCESS);
}
