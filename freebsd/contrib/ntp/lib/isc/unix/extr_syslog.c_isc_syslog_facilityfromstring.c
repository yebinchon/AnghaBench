
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_2__ {int val; int * strval; } ;


 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 TYPE_1__* facilities ;
 scalar_t__ strcasecmp (int *,char const*) ;

isc_result_t
isc_syslog_facilityfromstring(const char *str, int *facilityp) {
 int i;

 REQUIRE(str != ((void*)0));
 REQUIRE(facilityp != ((void*)0));

 for (i = 0; facilities[i].strval != ((void*)0); i++) {
  if (strcasecmp(facilities[i].strval, str) == 0) {
   *facilityp = facilities[i].val;
   return (ISC_R_SUCCESS);
  }
 }
 return (ISC_R_NOTFOUND);

}
