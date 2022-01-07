
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_7__ {int result; TYPE_1__* buf6; scalar_t__ pos6; } ;
typedef TYPE_2__ isc_interfaceiter_t ;
struct TYPE_6__ {scalar_t__ iAddressCount; } ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_IFITER (TYPE_2__*) ;
 int isc_interfaceiter_next (TYPE_2__*) ;
 int use_GAA ;
 int use_GAA_determined ;

isc_result_t
isc_interfaceiter_first(isc_interfaceiter_t *iter) {
 REQUIRE(VALID_IFITER(iter));
 REQUIRE(use_GAA_determined);
 if (!use_GAA && iter->buf6 != ((void*)0))
  iter->pos6 = iter->buf6->iAddressCount + 1;
 iter->result = ISC_R_SUCCESS;
 return (isc_interfaceiter_next(iter));
}
