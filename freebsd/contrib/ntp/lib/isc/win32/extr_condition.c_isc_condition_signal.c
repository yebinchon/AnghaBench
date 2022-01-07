
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int * events; } ;
typedef TYPE_1__ isc_condition_t ;


 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 size_t LSIGNAL ;
 int REQUIRE (int ) ;
 int SetEvent (int ) ;

isc_result_t
isc_condition_signal(isc_condition_t *cond) {





 REQUIRE(cond != ((void*)0));

 if (!SetEvent(cond->events[LSIGNAL])) {

  return (ISC_R_UNEXPECTED);
 }

 return (ISC_R_SUCCESS);
}
