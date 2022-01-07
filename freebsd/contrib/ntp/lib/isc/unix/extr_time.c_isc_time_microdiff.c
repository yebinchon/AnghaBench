
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_uint64_t ;
struct TYPE_4__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;


 int INSIST (int) ;
 scalar_t__ NS_PER_S ;
 scalar_t__ NS_PER_US ;
 int REQUIRE (int) ;

isc_uint64_t
isc_time_microdiff(const isc_time_t *t1, const isc_time_t *t2) {
 isc_uint64_t i1, i2, i3;

 REQUIRE(t1 != ((void*)0) && t2 != ((void*)0));
 INSIST(t1->nanoseconds < NS_PER_S && t2->nanoseconds < NS_PER_S);

 i1 = (isc_uint64_t)t1->seconds * NS_PER_S + t1->nanoseconds;
 i2 = (isc_uint64_t)t2->seconds * NS_PER_S + t2->nanoseconds;

 if (i1 <= i2)
  return (0);

 i3 = i1 - i2;




 i3 /= NS_PER_US;

 return (i3);
}
