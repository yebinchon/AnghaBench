
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef scalar_t__ isc_boolean_t ;


 scalar_t__ ISC_FALSE ;
 int ISC_R_SUCCESS ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 size_t RELOAD_EVENT ;
 int REQUIRE (int ) ;
 int SetEvent (int ) ;
 int UNLOCK (int *) ;
 int * hEvents ;
 int lock ;
 int running ;
 scalar_t__ shutdown_requested ;

isc_result_t
isc__app_reload(void) {
 isc_boolean_t want_reload = ISC_TRUE;

 LOCK(&lock);
 REQUIRE(running);




 if (shutdown_requested)
  want_reload = ISC_FALSE;

 UNLOCK(&lock);
 if (want_reload)
  SetEvent(hEvents[RELOAD_EVENT]);

 return (ISC_R_SUCCESS);
}
