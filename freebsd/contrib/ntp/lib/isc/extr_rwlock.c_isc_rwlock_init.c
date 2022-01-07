
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int magic; scalar_t__ active; int type; } ;
typedef TYPE_1__ isc_rwlock_t ;
typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int RWLOCK_MAGIC ;
 int UNUSED (unsigned int) ;
 int isc_rwlocktype_read ;

isc_result_t
isc_rwlock_init(isc_rwlock_t *rwl, unsigned int read_quota,
  unsigned int write_quota)
{
 REQUIRE(rwl != ((void*)0));

 UNUSED(read_quota);
 UNUSED(write_quota);

 rwl->type = isc_rwlocktype_read;
 rwl->active = 0;
 rwl->magic = RWLOCK_MAGIC;

 return (ISC_R_SUCCESS);
}
