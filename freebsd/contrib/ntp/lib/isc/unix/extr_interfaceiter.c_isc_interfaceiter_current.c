
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_3__ {scalar_t__ result; int current; } ;
typedef TYPE_1__ isc_interfaceiter_t ;
typedef int isc_interface_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int memcpy (int *,int *,int) ;

isc_result_t
isc_interfaceiter_current(isc_interfaceiter_t *iter,
     isc_interface_t *ifdata)
{
 REQUIRE(iter->result == ISC_R_SUCCESS);
 memcpy(ifdata, &iter->current, sizeof(*ifdata));
 return (ISC_R_SUCCESS);
}
