
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_onexit_t ;
typedef int minor_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int ddi_soft_state_free (int ,int ) ;
 int spa_namespace_lock ;
 int zfs_onexit_destroy (int *) ;
 int zfsdev_state ;

__attribute__((used)) static void
zfs_ctldev_destroy(zfs_onexit_t *zo, minor_t minor)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 zfs_onexit_destroy(zo);
 ddi_soft_state_free(zfsdev_state, minor);
}
