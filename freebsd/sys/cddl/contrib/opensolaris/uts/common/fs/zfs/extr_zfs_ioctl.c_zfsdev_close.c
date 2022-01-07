
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_onexit_t ;
typedef scalar_t__ minor_t ;


 int ZSST_CTLDEV ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_namespace_lock ;
 int zfs_ctldev_destroy (int *,scalar_t__) ;
 int * zfsdev_get_soft_state (scalar_t__,int ) ;

__attribute__((used)) static void
zfsdev_close(void *data)
{
 zfs_onexit_t *zo;
 minor_t minor = (minor_t)(uintptr_t)data;

 if (minor == 0)
  return;

 mutex_enter(&spa_namespace_lock);
 zo = zfsdev_get_soft_state(minor, ZSST_CTLDEV);
 if (zo == ((void*)0)) {
  mutex_exit(&spa_namespace_lock);
  return;
 }
 zfs_ctldev_destroy(zo, minor);
 mutex_exit(&spa_namespace_lock);
}
