
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;


 int FTAG ;
 int spa_close (int *,int ) ;
 int spa_freeze (int *) ;
 int spa_open (int ,int **,int ) ;

__attribute__((used)) static int
zfs_ioc_pool_freeze(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;

 error = spa_open(zc->zc_name, &spa, FTAG);
 if (error == 0) {
  spa_freeze(spa);
  spa_close(spa, FTAG);
 }
 return (error);
}
