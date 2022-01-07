
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zss_type; void* zss_data; } ;
typedef TYPE_1__ zfs_soft_state_t ;
typedef int minor_t ;
typedef enum zfs_soft_state_type { ____Placeholder_zfs_soft_state_type } zfs_soft_state_type ;


 TYPE_1__* ddi_get_soft_state (int ,int ) ;
 int zfsdev_state ;

void *
zfsdev_get_soft_state(minor_t minor, enum zfs_soft_state_type which)
{
 zfs_soft_state_t *zp;

 zp = ddi_get_soft_state(zfsdev_state, minor);
 if (zp == ((void*)0) || zp->zss_type != which)
  return (((void*)0));

 return (zp->zss_data);
}
