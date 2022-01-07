
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zss_data; int zss_type; } ;
typedef TYPE_1__ zfs_soft_state_t ;
typedef int zfs_onexit_t ;
struct cdev {int dummy; } ;
typedef scalar_t__ minor_t ;


 int ASSERT (int ) ;
 scalar_t__ DDI_SUCCESS ;
 int EAGAIN ;
 int ENXIO ;
 int MUTEX_HELD (int *) ;
 int SET_ERROR (int ) ;
 int ZSST_CTLDEV ;
 TYPE_1__* ddi_get_soft_state (int ,scalar_t__) ;
 scalar_t__ ddi_soft_state_zalloc (int ,scalar_t__) ;
 int devfs_set_cdevpriv (void*,int ) ;
 int spa_namespace_lock ;
 int zfs_onexit_init (int **) ;
 int zfsdev_close ;
 scalar_t__ zfsdev_minor_alloc () ;
 int zfsdev_state ;

__attribute__((used)) static int
zfs_ctldev_init(struct cdev *devp)
{
 minor_t minor;
 zfs_soft_state_t *zs;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 minor = zfsdev_minor_alloc();
 if (minor == 0)
  return (SET_ERROR(ENXIO));

 if (ddi_soft_state_zalloc(zfsdev_state, minor) != DDI_SUCCESS)
  return (SET_ERROR(EAGAIN));

 devfs_set_cdevpriv((void *)(uintptr_t)minor, zfsdev_close);

 zs = ddi_get_soft_state(zfsdev_state, minor);
 zs->zss_type = ZSST_CTLDEV;
 zfs_onexit_init((zfs_onexit_t **)&zs->zss_data);

 return (0);
}
