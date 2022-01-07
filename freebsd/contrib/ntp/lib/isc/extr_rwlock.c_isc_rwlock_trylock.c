
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_rwlocktype_t ;
typedef int isc_rwlock_t ;
typedef int isc_result_t ;


 int isc_rwlock_lock (int *,int ) ;

isc_result_t
isc_rwlock_trylock(isc_rwlock_t *rwl, isc_rwlocktype_t type) {
 return (isc_rwlock_lock(rwl, type));
}
