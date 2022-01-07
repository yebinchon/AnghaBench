
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_rwlocktype_t ;
struct TYPE_4__ {scalar_t__ type; int active; } ;
typedef TYPE_1__ isc_rwlock_t ;
typedef int isc_result_t ;


 int ISC_R_LOCKBUSY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_RWLOCK (TYPE_1__*) ;
 scalar_t__ isc_rwlocktype_read ;
 scalar_t__ isc_rwlocktype_write ;

isc_result_t
isc_rwlock_lock(isc_rwlock_t *rwl, isc_rwlocktype_t type) {
 REQUIRE(VALID_RWLOCK(rwl));

 if (type == isc_rwlocktype_read) {
  if (rwl->type != isc_rwlocktype_read && rwl->active != 0)
   return (ISC_R_LOCKBUSY);
  rwl->type = isc_rwlocktype_read;
  rwl->active++;
 } else {
  if (rwl->active != 0)
   return (ISC_R_LOCKBUSY);
  rwl->type = isc_rwlocktype_write;
  rwl->active = 1;
 }
 return (ISC_R_SUCCESS);
}
