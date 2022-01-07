
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef void* isc_boolean_t ;


 void* ISC_FALSE ;
 int ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 size_t SHUTDOWN_EVENT ;
 int SetEvent (int ) ;
 int UNLOCK (int *) ;
 int * hEvents ;
 int lock ;
 int running ;
 void* shutdown_requested ;

isc_result_t
isc__app_shutdown(void) {
 isc_boolean_t want_kill = ISC_TRUE;

 LOCK(&lock);
 REQUIRE(running);

 if (shutdown_requested)
  want_kill = ISC_FALSE;
 else
  shutdown_requested = ISC_TRUE;

 UNLOCK(&lock);
 if (want_kill)
  SetEvent(hEvents[SHUTDOWN_EVENT]);

 return (ISC_R_SUCCESS);
}
