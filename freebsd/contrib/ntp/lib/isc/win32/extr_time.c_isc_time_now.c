
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int absolute; } ;
typedef TYPE_1__ isc_time_t ;
typedef int isc_result_t ;


 int GetSystemTimeAsFileTime (int *) ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;

isc_result_t
isc_time_now(isc_time_t *t) {
 REQUIRE(t != ((void*)0));

 GetSystemTimeAsFileTime(&t->absolute);

 return (ISC_R_SUCCESS);
}
