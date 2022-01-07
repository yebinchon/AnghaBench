
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_24__ ;
typedef struct TYPE_30__ TYPE_21__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int uint64_t ;
typedef int recvname ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
struct TYPE_29__ {TYPE_21__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_31__ {scalar_t__ ds_prev_snap_obj; } ;
struct TYPE_30__ {int * dd_pool; } ;


 int ASSERT (int ) ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_AVAILABLE ;
 int ZFS_PROP_COMPRESSRATIO ;
 int ZFS_PROP_CREATETXG ;
 int ZFS_PROP_CREATION ;
 int ZFS_PROP_DEFER_DESTROY ;
 int ZFS_PROP_GUID ;
 int ZFS_PROP_LOGICALREFERENCED ;
 int ZFS_PROP_OBJSETID ;
 int ZFS_PROP_PREV_SNAP ;
 int ZFS_PROP_REFERENCED ;
 int ZFS_PROP_REFQUOTA ;
 int ZFS_PROP_REFRATIO ;
 int ZFS_PROP_REFRESERVATION ;
 int ZFS_PROP_UNIQUE ;
 int ZFS_PROP_USED ;
 int ZFS_PROP_USERREFS ;
 int ZFS_PROP_WRITTEN ;
 scalar_t__ dsl_dataset_hold (int *,char*,int ,TYPE_1__**) ;
 int dsl_dataset_is_snapshot (TYPE_1__*) ;
 int dsl_dataset_name (TYPE_1__*,char*) ;
 TYPE_24__* dsl_dataset_phys (TYPE_1__*) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dir_stats (TYPE_21__*,int *) ;
 int dsl_get_available (TYPE_1__*) ;
 int dsl_get_compressratio (TYPE_1__*) ;
 int dsl_get_creation (TYPE_1__*) ;
 int dsl_get_creationtxg (TYPE_1__*) ;
 int dsl_get_defer_destroy (TYPE_1__*) ;
 int dsl_get_guid (TYPE_1__*) ;
 int dsl_get_logicalreferenced (TYPE_1__*) ;
 int dsl_get_objsetid (TYPE_1__*) ;
 scalar_t__ dsl_get_prev_snap (TYPE_1__*,char*) ;
 int dsl_get_referenced (TYPE_1__*) ;
 int dsl_get_refquota (TYPE_1__*) ;
 int dsl_get_refratio (TYPE_1__*) ;
 int dsl_get_refreservation (TYPE_1__*) ;
 int dsl_get_unique (TYPE_1__*) ;
 int dsl_get_used (TYPE_1__*) ;
 int dsl_get_userrefs (TYPE_1__*) ;
 scalar_t__ dsl_get_written (TYPE_1__*,int *) ;
 int dsl_pool_config_held (int *) ;
 int dsl_prop_nvlist_add_string (int *,int ,char*) ;
 int dsl_prop_nvlist_add_uint64 (int *,int ,int ) ;
 int get_clones_stat (TYPE_1__*,int *) ;
 int get_receive_resume_stats (TYPE_1__*,int *) ;
 char* recv_clone_name ;
 int strlcat (char*,char*,int) ;

void
dsl_dataset_stats(dsl_dataset_t *ds, nvlist_t *nv)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;

 ASSERT(dsl_pool_config_held(dp));

 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_REFRATIO,
     dsl_get_refratio(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_LOGICALREFERENCED,
     dsl_get_logicalreferenced(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_COMPRESSRATIO,
     dsl_get_compressratio(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USED,
     dsl_get_used(ds));

 if (ds->ds_is_snapshot) {
  get_clones_stat(ds, nv);
 } else {
  char buf[ZFS_MAX_DATASET_NAME_LEN];
  if (dsl_get_prev_snap(ds, buf) == 0)
   dsl_prop_nvlist_add_string(nv, ZFS_PROP_PREV_SNAP,
       buf);
  dsl_dir_stats(ds->ds_dir, nv);
 }

 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_AVAILABLE,
     dsl_get_available(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_REFERENCED,
     dsl_get_referenced(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_CREATION,
     dsl_get_creation(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_CREATETXG,
     dsl_get_creationtxg(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_REFQUOTA,
     dsl_get_refquota(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_REFRESERVATION,
     dsl_get_refreservation(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_GUID,
     dsl_get_guid(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_UNIQUE,
     dsl_get_unique(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_OBJSETID,
     dsl_get_objsetid(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USERREFS,
     dsl_get_userrefs(ds));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_DEFER_DESTROY,
     dsl_get_defer_destroy(ds));

 if (dsl_dataset_phys(ds)->ds_prev_snap_obj != 0) {
  uint64_t written;
  if (dsl_get_written(ds, &written) == 0) {
   dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_WRITTEN,
       written);
  }
 }

 if (!dsl_dataset_is_snapshot(ds)) {




  get_receive_resume_stats(ds, nv);







  char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];
  dsl_dataset_t *recv_ds;
  dsl_dataset_name(ds, recvname);
  if (strlcat(recvname, "/", sizeof (recvname)) <
      sizeof (recvname) &&
      strlcat(recvname, recv_clone_name, sizeof (recvname)) <
      sizeof (recvname) &&
      dsl_dataset_hold(dp, recvname, FTAG, &recv_ds) == 0) {
   get_receive_resume_stats(recv_ds, nv);
   dsl_dataset_rele(recv_ds, FTAG);
  }
 }
}
