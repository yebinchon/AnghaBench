
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_rwlocktype_t ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ active; } ;
typedef TYPE_1__ isc_rwlock_t ;
typedef int isc_result_t ;


 int INSIST (int) ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int UNUSED (scalar_t__) ;
 int VALID_RWLOCK (TYPE_1__*) ;

isc_result_t
isc_rwlock_unlock(isc_rwlock_t *rwl, isc_rwlocktype_t type) {
 REQUIRE(VALID_RWLOCK(rwl));
 REQUIRE(rwl->type == type);

 UNUSED(type);

 INSIST(rwl->active > 0);
 rwl->active--;

 return (ISC_R_SUCCESS);
}
