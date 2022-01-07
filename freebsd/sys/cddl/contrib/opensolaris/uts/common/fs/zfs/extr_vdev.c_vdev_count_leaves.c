
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;


 int vdev_count_leaves_impl (int ) ;

int
vdev_count_leaves(spa_t *spa)
{
 return (vdev_count_leaves_impl(spa->spa_root_vdev));
}
