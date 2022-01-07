
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int isc_result_t ;
typedef int isc_condition_t ;
struct TYPE_2__ {void* want_shutdown; } ;


 int INSIST (int ) ;
 int ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int UNUSED (int *) ;
 int in_recursive_evloop ;
 TYPE_1__ isc_g_appctx ;
 void* signalled ;

isc_result_t
isc__nothread_signal_hack(isc_condition_t *cp) {

 UNUSED(cp);

 INSIST(in_recursive_evloop);

 isc_g_appctx.want_shutdown = ISC_TRUE;
 signalled = ISC_TRUE;
 return (ISC_R_SUCCESS);
}
