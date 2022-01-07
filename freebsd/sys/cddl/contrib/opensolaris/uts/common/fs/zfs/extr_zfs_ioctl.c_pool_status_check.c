
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_ioc_poolcheck_t ;
typedef scalar_t__ zfs_ioc_namecheck_t ;
typedef int spa_t ;


 int ASSERT (int) ;
 scalar_t__ DATASET_NAME ;
 int EAGAIN ;
 scalar_t__ ENTITY_NAME ;
 int EROFS ;
 int FTAG ;
 int POOL_CHECK_NONE ;
 int POOL_CHECK_READONLY ;
 int POOL_CHECK_SUSPENDED ;
 scalar_t__ POOL_NAME ;
 int SET_ERROR (int ) ;
 int spa_close (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 scalar_t__ spa_suspended (int *) ;
 int spa_writeable (int *) ;

int
pool_status_check(const char *name, zfs_ioc_namecheck_t type,
    zfs_ioc_poolcheck_t check)
{
 spa_t *spa;
 int error;

 ASSERT(type == POOL_NAME || type == DATASET_NAME ||
     type == ENTITY_NAME);

 if (check & POOL_CHECK_NONE)
  return (0);

 error = spa_open(name, &spa, FTAG);
 if (error == 0) {
  if ((check & POOL_CHECK_SUSPENDED) && spa_suspended(spa))
   error = SET_ERROR(EAGAIN);
  else if ((check & POOL_CHECK_READONLY) && !spa_writeable(spa))
   error = SET_ERROR(EROFS);
  spa_close(spa, FTAG);
 }
 return (error);
}
