
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_7__ {scalar_t__ result; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 scalar_t__ ISC_R_IGNORE ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_IFITER (TYPE_1__*) ;
 scalar_t__ internal_current (TYPE_1__*) ;
 int internal_first (TYPE_1__*) ;
 scalar_t__ internal_next (TYPE_1__*) ;

isc_result_t
isc_interfaceiter_first(isc_interfaceiter_t *iter) {
 isc_result_t result;

 REQUIRE(VALID_IFITER(iter));

 internal_first(iter);
 for (;;) {
  result = internal_current(iter);
  if (result != ISC_R_IGNORE)
   break;
  result = internal_next(iter);
  if (result != ISC_R_SUCCESS)
   break;
 }
 iter->result = result;
 return (result);
}
