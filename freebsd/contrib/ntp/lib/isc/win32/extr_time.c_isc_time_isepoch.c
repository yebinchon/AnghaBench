
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwLowDateTime; scalar_t__ dwHighDateTime; } ;
struct TYPE_5__ {TYPE_1__ absolute; } ;
typedef TYPE_2__ isc_time_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;

isc_boolean_t
isc_time_isepoch(const isc_time_t *t) {
 REQUIRE(t != ((void*)0));

 if (t->absolute.dwLowDateTime == 0 &&
     t->absolute.dwHighDateTime == 0)
  return (ISC_TRUE);

 return (ISC_FALSE);
}
