
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zv_minor; scalar_t__ zv_total_opens; scalar_t__ zv_volmode; int zv_rangelock; int * zv_dev; int zv_name; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int nmbuf ;
typedef int minor_t ;


 int ASSERT (int ) ;
 int EBUSY ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int MUTEX_HELD (int *) ;
 int SET_ERROR (int ) ;
 int ZFS_LOG (int,char*,int ) ;
 scalar_t__ ZFS_VOLMODE_DEV ;
 scalar_t__ ZFS_VOLMODE_GEOM ;
 int ddi_remove_minor_node (int ,char*) ;
 int ddi_soft_state_free (int ,int) ;
 int destroy_dev (int *) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int kmem_free (TYPE_1__*,int) ;
 int rangelock_fini (int *) ;
 int snprintf (char*,int,char*,int) ;
 int zfs_dip ;
 int zfsdev_state ;
 int zfsdev_state_lock ;
 int zv_links ;
 int zvol_geom_destroy (TYPE_1__*) ;
 int zvol_minors ;

__attribute__((used)) static int
zvol_remove_zv(zvol_state_t *zv)
{





 ASSERT(MUTEX_HELD(&zfsdev_state_lock));
 if (zv->zv_total_opens != 0)
  return (SET_ERROR(EBUSY));
 ZFS_LOG(1, "ZVOL %s destroyed.", zv->zv_name);

 LIST_REMOVE(zv, zv_links);
 if (zv->zv_volmode == ZFS_VOLMODE_GEOM) {
  g_topology_lock();
  zvol_geom_destroy(zv);
  g_topology_unlock();
 } else if (zv->zv_volmode == ZFS_VOLMODE_DEV) {
  if (zv->zv_dev != ((void*)0))
   destroy_dev(zv->zv_dev);
 }


 rangelock_fini(&zv->zv_rangelock);

 kmem_free(zv, sizeof (zvol_state_t));



 zvol_minors--;
 return (0);
}
