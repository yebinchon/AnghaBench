
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int isc_uint32_t ;
struct TYPE_3__ {scalar_t__ nanoseconds; unsigned int seconds; } ;
typedef TYPE_1__ isc_time_t ;
typedef int isc_result_t ;


 int INSIST (int) ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 scalar_t__ NS_PER_S ;
 int REQUIRE (int ) ;

isc_result_t
isc_time_secondsastimet(const isc_time_t *t, time_t *secondsp) {
 time_t seconds;

 REQUIRE(t != ((void*)0));
 INSIST(t->nanoseconds < NS_PER_S);
 seconds = (time_t)t->seconds;

 INSIST(sizeof(unsigned int) == sizeof(isc_uint32_t));
 INSIST(sizeof(time_t) >= sizeof(isc_uint32_t));

 if (t->seconds > (~0U>>1) && seconds <= (time_t)(~0U>>1))
  return (ISC_R_RANGE);

 *secondsp = seconds;

 return (ISC_R_SUCCESS);
}
