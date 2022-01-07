
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdev_t ;
typedef int uint64_t ;
struct TYPE_4__ {int spa_vdev_top_lock; } ;
typedef TYPE_1__ spa_t ;


 int FTAG ;
 int mutex_exit (int *) ;
 int spa_namespace_lock ;
 int spa_vdev_config_exit (TYPE_1__*,int *,int ,int,int ) ;

int
spa_vdev_exit(spa_t *spa, vdev_t *vd, uint64_t txg, int error)
{
 spa_vdev_config_exit(spa, vd, txg, error, FTAG);
 mutex_exit(&spa_namespace_lock);
 mutex_exit(&spa->spa_vdev_top_lock);

 return (error);
}
