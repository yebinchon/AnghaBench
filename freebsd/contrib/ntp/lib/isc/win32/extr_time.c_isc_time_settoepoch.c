
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
struct TYPE_5__ {TYPE_1__ absolute; } ;
typedef TYPE_2__ isc_time_t ;


 int REQUIRE (int ) ;

void
isc_time_settoepoch(isc_time_t *t) {
 REQUIRE(t != ((void*)0));

 t->absolute.dwLowDateTime = 0;
 t->absolute.dwHighDateTime = 0;
}
