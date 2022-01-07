
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ status; int counter; } ;
typedef TYPE_1__ isc_once_t ;


 scalar_t__ ISC_ONCE_INIT_DONE ;
 scalar_t__ ISC_ONCE_INIT_NEEDED ;
 int ISC_R_SUCCESS ;
 scalar_t__ InterlockedDecrement (int *) ;
 int REQUIRE (int) ;
 int Sleep (int ) ;

isc_result_t
isc_once_do(isc_once_t *controller, void(*function)(void)) {
 REQUIRE(controller != ((void*)0) && function != ((void*)0));

 if (controller->status == ISC_ONCE_INIT_NEEDED) {

  if (InterlockedDecrement(&controller->counter) == 0) {
   if (controller->status == ISC_ONCE_INIT_NEEDED) {
    function();
    controller->status = ISC_ONCE_INIT_DONE;
   }
  } else {
   while (controller->status == ISC_ONCE_INIT_NEEDED) {





    Sleep(0);
   }
  }
 }

 return (ISC_R_SUCCESS);
}
