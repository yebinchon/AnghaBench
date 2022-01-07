
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;
typedef int isc_result_t ;
struct TYPE_7__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_2__ isc_interval_t ;


 int INSIST (int) ;
 scalar_t__ INT_MAX ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 scalar_t__ NS_PER_S ;
 int REQUIRE (int) ;
 scalar_t__ UINT_MAX ;

isc_result_t
isc_time_add(const isc_time_t *t, const isc_interval_t *i, isc_time_t *result)
{
 REQUIRE(t != ((void*)0) && i != ((void*)0) && result != ((void*)0));
 INSIST(t->nanoseconds < NS_PER_S && i->nanoseconds < NS_PER_S);







 if ((t->seconds > INT_MAX || i->seconds > INT_MAX) &&
     ((long long)t->seconds + i->seconds > UINT_MAX))
  return (ISC_R_RANGE);

 result->seconds = t->seconds + i->seconds;
 result->nanoseconds = t->nanoseconds + i->nanoseconds;
 if (result->nanoseconds >= NS_PER_S) {
  result->seconds++;
  result->nanoseconds -= NS_PER_S;
 }

 return (ISC_R_SUCCESS);
}
