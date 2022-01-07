
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_cookie; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;


 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int spa_upgrade (int *,scalar_t__) ;
 scalar_t__ spa_version (int *) ;

__attribute__((used)) static int
zfs_ioc_pool_upgrade(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0)
  return (error);

 if (zc->zc_cookie < spa_version(spa) ||
     !SPA_VERSION_IS_SUPPORTED(zc->zc_cookie)) {
  spa_close(spa, FTAG);
  return (SET_ERROR(EINVAL));
 }

 spa_upgrade(spa, zc->zc_cookie);
 spa_close(spa, FTAG);

 return (error);
}
