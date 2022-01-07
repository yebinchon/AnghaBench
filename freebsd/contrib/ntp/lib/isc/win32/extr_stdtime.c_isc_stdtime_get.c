
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int isc_stdtime_t ;


 int REQUIRE (int ) ;
 int time (int *) ;

void
isc_stdtime_get(isc_stdtime_t *t) {




 REQUIRE(t != ((void*)0));

 (void)time((time_t *)t);
}
