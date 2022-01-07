
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;


 int INSIST (int) ;
 scalar_t__ NS_PER_S ;
 int REQUIRE (int) ;

int
isc_time_compare(const isc_time_t *t1, const isc_time_t *t2) {
 REQUIRE(t1 != ((void*)0) && t2 != ((void*)0));
 INSIST(t1->nanoseconds < NS_PER_S && t2->nanoseconds < NS_PER_S);

 if (t1->seconds < t2->seconds)
  return (-1);
 if (t1->seconds > t2->seconds)
  return (1);
 if (t1->nanoseconds < t2->nanoseconds)
  return (-1);
 if (t1->nanoseconds > t2->nanoseconds)
  return (1);
 return (0);
}
