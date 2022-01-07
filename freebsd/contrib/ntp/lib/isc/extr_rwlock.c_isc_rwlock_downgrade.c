
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int active; } ;
typedef TYPE_1__ isc_rwlock_t ;


 int REQUIRE (int) ;
 int VALID_RWLOCK (TYPE_1__*) ;
 scalar_t__ isc_rwlocktype_read ;
 scalar_t__ isc_rwlocktype_write ;

void
isc_rwlock_downgrade(isc_rwlock_t *rwl) {

 REQUIRE(VALID_RWLOCK(rwl));
 REQUIRE(rwl->type == isc_rwlocktype_write);
 REQUIRE(rwl->active == 1);

 rwl->type = isc_rwlocktype_read;
}
