
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int seconds; unsigned int nanoseconds; } ;
typedef TYPE_1__ isc_time_t ;


 unsigned int NS_PER_S ;
 int REQUIRE (int) ;

void
isc_time_set(isc_time_t *t, unsigned int seconds, unsigned int nanoseconds) {
 REQUIRE(t != ((void*)0));
 REQUIRE(nanoseconds < NS_PER_S);

 t->seconds = seconds;
 t->nanoseconds = nanoseconds;
}
