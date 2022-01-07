
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ interval; } ;
typedef TYPE_1__ isc_interval_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;

isc_boolean_t
isc_interval_iszero(const isc_interval_t *i) {
 REQUIRE(i != ((void*)0));
 if (i->interval == 0)
  return (ISC_TRUE);

 return (ISC_FALSE);
}
