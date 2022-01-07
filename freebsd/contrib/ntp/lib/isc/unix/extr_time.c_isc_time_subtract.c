
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;
typedef int isc_result_t ;
struct TYPE_7__ {scalar_t__ nanoseconds; unsigned int seconds; } ;
typedef TYPE_2__ isc_interval_t ;


 int INSIST (int) ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 scalar_t__ NS_PER_S ;
 int REQUIRE (int) ;

isc_result_t
isc_time_subtract(const isc_time_t *t, const isc_interval_t *i,
    isc_time_t *result)
{
 REQUIRE(t != ((void*)0) && i != ((void*)0) && result != ((void*)0));
 INSIST(t->nanoseconds < NS_PER_S && i->nanoseconds < NS_PER_S);

 if ((unsigned int)t->seconds < i->seconds ||
     ((unsigned int)t->seconds == i->seconds &&
      t->nanoseconds < i->nanoseconds))
     return (ISC_R_RANGE);

 result->seconds = t->seconds - i->seconds;
 if (t->nanoseconds >= i->nanoseconds)
  result->nanoseconds = t->nanoseconds - i->nanoseconds;
 else {
  result->nanoseconds = NS_PER_S - i->nanoseconds +
   t->nanoseconds;
  result->seconds--;
 }

 return (ISC_R_SUCCESS);
}
