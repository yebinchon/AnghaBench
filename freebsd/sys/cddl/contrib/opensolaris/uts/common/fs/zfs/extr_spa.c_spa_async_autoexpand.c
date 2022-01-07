
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vdev_children; char* vdev_physpath; TYPE_1__* vdev_ops; struct TYPE_7__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef int sysevent_id_t ;
struct TYPE_8__ {int spa_autoexpand; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int vdev_op_leaf; } ;


 int DDI_SLEEP ;
 int DEV_PHYS_PATH ;
 int EC_DEV_STATUS ;
 int ESC_ZFS_VDEV_AUTOEXPAND ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int NV_UNIQUE_NAME ;
 int SUNW_VENDOR ;
 int VERIFY (int) ;
 int ddi_log_sysevent (int ,int ,int ,int ,int *,int *,int ) ;
 int kmem_free (char*,int ) ;
 char* kmem_zalloc (int ,int ) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int ,char*,char*) ;
 int zfs_dip ;

__attribute__((used)) static void
spa_async_autoexpand(spa_t *spa, vdev_t *vd)
{
 sysevent_id_t eid;
 nvlist_t *attr;
 char *physpath;

 if (!spa->spa_autoexpand)
  return;

 for (int c = 0; c < vd->vdev_children; c++) {
  vdev_t *cvd = vd->vdev_child[c];
  spa_async_autoexpand(spa, cvd);
 }

 if (!vd->vdev_ops->vdev_op_leaf || vd->vdev_physpath == ((void*)0))
  return;

 physpath = kmem_zalloc(MAXPATHLEN, KM_SLEEP);
 (void) snprintf(physpath, MAXPATHLEN, "/devices%s", vd->vdev_physpath);

 VERIFY(nvlist_alloc(&attr, NV_UNIQUE_NAME, KM_SLEEP) == 0);
 VERIFY(nvlist_add_string(attr, DEV_PHYS_PATH, physpath) == 0);

 (void) ddi_log_sysevent(zfs_dip, SUNW_VENDOR, EC_DEV_STATUS,
     ESC_ZFS_VDEV_AUTOEXPAND, attr, &eid, DDI_SLEEP);

 nvlist_free(attr);
 kmem_free(physpath, MAXPATHLEN);
}
