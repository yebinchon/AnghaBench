
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;
typedef int isc_boolean_t ;


 int INSIST (int) ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 scalar_t__ NS_PER_S ;
 int REQUIRE (int ) ;

isc_boolean_t
isc_time_isepoch(const isc_time_t *t) {
 REQUIRE(t != ((void*)0));
 INSIST(t->nanoseconds < NS_PER_S);

 if (t->seconds == 0 && t->nanoseconds == 0)
  return (ISC_TRUE);

 return (ISC_FALSE);
}
