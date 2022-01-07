
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_size; } ;
typedef TYPE_1__ znode_t ;
typedef int boolean_t ;



boolean_t
zfs_dirempty(znode_t *dzp)
{
 return (dzp->z_size == 2);
}
