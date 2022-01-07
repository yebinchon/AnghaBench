
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_guid; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;


 int B_FALSE ;
 int FTAG ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int spa_vdev_detach (int *,int ,int ,int ) ;

__attribute__((used)) static int
zfs_ioc_vdev_detach(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0)
  return (error);

 error = spa_vdev_detach(spa, zc->zc_guid, 0, B_FALSE);

 spa_close(spa, FTAG);
 return (error);
}
