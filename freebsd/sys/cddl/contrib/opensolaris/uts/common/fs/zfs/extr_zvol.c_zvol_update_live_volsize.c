
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long long zv_volsize; int zv_flags; int zv_minor; int zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
typedef unsigned long long uint64_t ;
typedef int sysevent_id_t ;
typedef int nvlist_t ;


 int ASSERT (int ) ;
 int DDI_SLEEP ;
 int DEV_PHYS_PATH ;
 int EC_DEV_STATUS ;
 int ESC_DEV_DLE ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int MUTEX_HELD (int *) ;
 int NV_UNIQUE_NAME ;
 int SUNW_VENDOR ;
 int VERIFY (int) ;
 int ZVOL_DUMPIFIED ;
 char* ZVOL_PSEUDO_DEV ;
 int ddi_log_sysevent (int ,int ,int ,int ,int *,int *,int ) ;
 int dumpvp_resize () ;
 int kmem_free (char*,int ) ;
 char* kmem_zalloc (int ,int ) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int ,char*,char*,int ) ;
 int zfs_dip ;
 int zfsdev_state_lock ;
 int zvol_dumpify (TYPE_1__*) ;
 int zvol_size_changed (TYPE_1__*,unsigned long long) ;
 int zvol_update_volsize (int ,unsigned long long) ;

__attribute__((used)) static int
zvol_update_live_volsize(zvol_state_t *zv, uint64_t volsize)
{
 uint64_t old_volsize = 0ULL;
 int error = 0;

 ASSERT(MUTEX_HELD(&zfsdev_state_lock));
 old_volsize = zv->zv_volsize;
 zvol_size_changed(zv, volsize);
 return (error);
}
