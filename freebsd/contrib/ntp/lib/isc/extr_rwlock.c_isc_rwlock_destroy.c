
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ active; scalar_t__ magic; } ;
typedef TYPE_1__ isc_rwlock_t ;


 int REQUIRE (int) ;

void
isc_rwlock_destroy(isc_rwlock_t *rwl) {
 REQUIRE(rwl != ((void*)0));
 REQUIRE(rwl->active == 0);
 rwl->magic = 0;
}
