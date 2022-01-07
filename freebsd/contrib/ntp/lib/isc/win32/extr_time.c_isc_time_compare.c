
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int absolute; } ;
typedef TYPE_1__ isc_time_t ;


 scalar_t__ CompareFileTime (int *,int *) ;
 int REQUIRE (int) ;

int
isc_time_compare(const isc_time_t *t1, const isc_time_t *t2) {
 REQUIRE(t1 != ((void*)0) && t2 != ((void*)0));

 return ((int)CompareFileTime(&t1->absolute, &t2->absolute));
}
