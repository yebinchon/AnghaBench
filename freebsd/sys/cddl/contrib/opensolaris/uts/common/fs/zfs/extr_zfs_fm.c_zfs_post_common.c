
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef int class ;


 int EVCH_SLEEP ;
 int FM_CLASS ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ;
 int FM_NVA_FREE ;
 char* FM_RSRC_RESOURCE ;
 int FM_RSRC_VERSION ;
 int FM_VERSION ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int VERIFY (int) ;
 char* ZFS_ERROR_CLASS ;
 int fm_ereport_post (int *,int ) ;
 int * fm_nvlist_create (int *) ;
 int fm_nvlist_destroy (int *,int ) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_add_uint8 (int *,int ,int ) ;
 int snprintf (char*,int,char*,char*,char*,char const*) ;
 int spa_guid (int *) ;
 scalar_t__ spa_load_state (int *) ;

__attribute__((used)) static void
zfs_post_common(spa_t *spa, vdev_t *vd, const char *name)
{
}
