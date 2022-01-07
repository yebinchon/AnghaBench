
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
typedef int isc_mutex_t ;
typedef int isc_condition_t ;
struct TYPE_3__ {void* want_shutdown; void* want_reload; } ;


 int INSIST (int) ;
 void* ISC_FALSE ;
 scalar_t__ ISC_R_RELOAD ;
 scalar_t__ ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int UNUSED (int*) ;
 scalar_t__ evloop (TYPE_1__*) ;
 void* in_recursive_evloop ;
 TYPE_1__ isc_g_appctx ;
 void* signalled ;

isc_result_t
isc__nothread_wait_hack(isc_condition_t *cp, isc_mutex_t *mp) {
 isc_result_t result;

 UNUSED(cp);
 UNUSED(mp);

 INSIST(!in_recursive_evloop);
 in_recursive_evloop = ISC_TRUE;

 INSIST(*mp == 1);
 --*mp;

 result = evloop(&isc_g_appctx);
 if (result == ISC_R_RELOAD)
  isc_g_appctx.want_reload = ISC_TRUE;
 if (signalled) {
  isc_g_appctx.want_shutdown = ISC_FALSE;
  signalled = ISC_FALSE;
 }

 ++*mp;
 in_recursive_evloop = ISC_FALSE;
 return (ISC_R_SUCCESS);
}
