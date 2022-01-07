
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_3__ {scalar_t__ nanoseconds; } ;
typedef TYPE_1__ isc_time_t ;


 int ENSURE (int) ;
 scalar_t__ NS_PER_S ;
 int REQUIRE (int ) ;

isc_uint32_t
isc_time_nanoseconds(const isc_time_t *t) {
 REQUIRE(t != ((void*)0));

 ENSURE(t->nanoseconds < NS_PER_S);

 return ((isc_uint32_t)t->nanoseconds);
}
