
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nanoseconds; scalar_t__ seconds; } ;
typedef TYPE_1__ isc_time_t ;


 int REQUIRE (int ) ;

void
isc_time_settoepoch(isc_time_t *t) {
 REQUIRE(t != ((void*)0));

 t->seconds = 0;
 t->nanoseconds = 0;
}
