
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vs ;
struct TYPE_10__ {int vs_alloc; int vs_aux; } ;
struct TYPE_13__ {int vic_mapping_object; int vic_births_object; int vic_prev_indirect_vdev; } ;
struct TYPE_12__ {int vdev_id; int vdev_guid; char const* vdev_path; char const* vdev_devid; char const* vdev_physpath; char const* vdev_fru; int vdev_nparity; unsigned long long vdev_wholedisk; int vdev_ms_array; int vdev_ms_shift; int vdev_ashift; int vdev_asize; int vdev_islog; int vdev_removing; int vdev_crtxg; int vdev_leaf_zap; int vdev_top_zap; int vdev_children; int vdev_resilver_txg; long long vdev_orig_guid; scalar_t__ vdev_splitting; TYPE_2__ vdev_stat; scalar_t__ vdev_ishole; scalar_t__ vdev_unspare; scalar_t__ vdev_removed; scalar_t__ vdev_degraded; scalar_t__ vdev_faulted; int vdev_tmpoffline; scalar_t__ vdev_offline; struct TYPE_12__** vdev_child; TYPE_3__* vdev_ops; TYPE_1__* vdev_mg; int vdev_indirect_rwlock; int * vdev_indirect_mapping; int * vdev_indirect_births; struct TYPE_12__* vdev_top; int * vdev_dtl_sm; scalar_t__ vdev_isspare; scalar_t__ vdev_not_present; TYPE_5__ vdev_indirect_config; } ;
typedef TYPE_4__ vdev_t ;
typedef int vdev_stat_t ;
typedef int vdev_indirect_mapping_t ;
typedef int vdev_indirect_mapping_entry_phys_t ;
typedef TYPE_5__ vdev_indirect_config_t ;
typedef int vdev_config_flag_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {char const* vdev_op_type; int vdev_op_leaf; } ;
struct TYPE_9__ {scalar_t__ mg_fragmentation; int* mg_histogram; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int KM_SLEEP ;
 int RANGE_TREE_HISTOGRAM_SIZE ;
 int RW_READER ;
 scalar_t__ SPA_VERSION_RAIDZ2 ;
 scalar_t__ SPA_VERSION_RAIDZ3 ;
 int UINT64_MAX ;


 int VDEV_CONFIG_L2CACHE ;
 int VDEV_CONFIG_MISSING ;
 int VDEV_CONFIG_MOS ;
 int VDEV_CONFIG_REMOVING ;
 int VDEV_CONFIG_SPARE ;
 int VDEV_TYPE_RAIDZ ;
 scalar_t__ ZFS_FRAG_INVALID ;
 int ZPOOL_CONFIG_ASHIFT ;
 int ZPOOL_CONFIG_ASIZE ;
 int ZPOOL_CONFIG_AUX_STATE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_CREATE_TXG ;
 int ZPOOL_CONFIG_DEGRADED ;
 int ZPOOL_CONFIG_DEVID ;
 int ZPOOL_CONFIG_DTL ;
 int ZPOOL_CONFIG_FAULTED ;
 int ZPOOL_CONFIG_FRU ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_ID ;
 int ZPOOL_CONFIG_INDIRECT_BIRTHS ;
 int ZPOOL_CONFIG_INDIRECT_OBJECT ;
 int ZPOOL_CONFIG_INDIRECT_SIZE ;
 int ZPOOL_CONFIG_IS_HOLE ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_IS_SPARE ;
 int ZPOOL_CONFIG_METASLAB_ARRAY ;
 int ZPOOL_CONFIG_METASLAB_SHIFT ;
 int ZPOOL_CONFIG_NOT_PRESENT ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_OFFLINE ;
 int ZPOOL_CONFIG_ORIG_GUID ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_PHYS_PATH ;
 int ZPOOL_CONFIG_PREV_INDIRECT_VDEV ;
 int ZPOOL_CONFIG_REMOVED ;
 int ZPOOL_CONFIG_REMOVING ;
 int ZPOOL_CONFIG_RESILVER_TXG ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_UNSPARE ;
 int ZPOOL_CONFIG_VDEV_LEAF_ZAP ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TOP_ZAP ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 int fnvlist_add_nvlist_array (int *,int ,int **,int) ;
 int fnvlist_add_string (int *,int ,char const*) ;
 int fnvlist_add_uint64 (int *,int ,int) ;
 int fnvlist_add_uint64_array (int *,int ,int*,int) ;
 int * fnvlist_alloc () ;
 int ** kmem_alloc (int,int ) ;
 int kmem_free (int **,int) ;
 int nvlist_free (int *) ;
 int root_vdev_actions_getprogress (TYPE_4__*,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ spa_version (int *) ;
 int space_map_object (int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int vdev_get_stats (TYPE_4__*,int *) ;
 int vdev_indirect_mapping_size (int *) ;
 int vdev_removal_max_span ;
 int zfs_remove_max_segment ;

nvlist_t *
vdev_config_generate(spa_t *spa, vdev_t *vd, boolean_t getstats,
    vdev_config_flag_t flags)
{
 nvlist_t *nv = ((void*)0);
 vdev_indirect_config_t *vic = &vd->vdev_indirect_config;

 nv = fnvlist_alloc();

 fnvlist_add_string(nv, ZPOOL_CONFIG_TYPE, vd->vdev_ops->vdev_op_type);
 if (!(flags & (VDEV_CONFIG_SPARE | VDEV_CONFIG_L2CACHE)))
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_ID, vd->vdev_id);
 fnvlist_add_uint64(nv, ZPOOL_CONFIG_GUID, vd->vdev_guid);

 if (vd->vdev_path != ((void*)0))
  fnvlist_add_string(nv, ZPOOL_CONFIG_PATH, vd->vdev_path);

 if (vd->vdev_devid != ((void*)0))
  fnvlist_add_string(nv, ZPOOL_CONFIG_DEVID, vd->vdev_devid);

 if (vd->vdev_physpath != ((void*)0))
  fnvlist_add_string(nv, ZPOOL_CONFIG_PHYS_PATH,
      vd->vdev_physpath);

 if (vd->vdev_fru != ((void*)0))
  fnvlist_add_string(nv, ZPOOL_CONFIG_FRU, vd->vdev_fru);

 if (vd->vdev_nparity != 0) {
  ASSERT(strcmp(vd->vdev_ops->vdev_op_type,
      VDEV_TYPE_RAIDZ) == 0);





  ASSERT(vd->vdev_nparity == 1 ||
      (vd->vdev_nparity <= 2 &&
      spa_version(spa) >= SPA_VERSION_RAIDZ2) ||
      (vd->vdev_nparity <= 3 &&
      spa_version(spa) >= SPA_VERSION_RAIDZ3));






  fnvlist_add_uint64(nv, ZPOOL_CONFIG_NPARITY, vd->vdev_nparity);
 }

 if (vd->vdev_wholedisk != -1ULL)
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_WHOLE_DISK,
      vd->vdev_wholedisk);

 if (vd->vdev_not_present && !(flags & VDEV_CONFIG_MISSING))
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_NOT_PRESENT, 1);

 if (vd->vdev_isspare)
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_IS_SPARE, 1);

 if (!(flags & (VDEV_CONFIG_SPARE | VDEV_CONFIG_L2CACHE)) &&
     vd == vd->vdev_top) {
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_METASLAB_ARRAY,
      vd->vdev_ms_array);
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_METASLAB_SHIFT,
      vd->vdev_ms_shift);
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_ASHIFT, vd->vdev_ashift);
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_ASIZE,
      vd->vdev_asize);
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_IS_LOG, vd->vdev_islog);
  if (vd->vdev_removing) {
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_REMOVING,
       vd->vdev_removing);
  }
 }

 if (vd->vdev_dtl_sm != ((void*)0)) {
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_DTL,
      space_map_object(vd->vdev_dtl_sm));
 }

 if (vic->vic_mapping_object != 0) {
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_INDIRECT_OBJECT,
      vic->vic_mapping_object);
 }

 if (vic->vic_births_object != 0) {
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_INDIRECT_BIRTHS,
      vic->vic_births_object);
 }

 if (vic->vic_prev_indirect_vdev != UINT64_MAX) {
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_PREV_INDIRECT_VDEV,
      vic->vic_prev_indirect_vdev);
 }

 if (vd->vdev_crtxg)
  fnvlist_add_uint64(nv, ZPOOL_CONFIG_CREATE_TXG, vd->vdev_crtxg);

 if (flags & VDEV_CONFIG_MOS) {
  if (vd->vdev_leaf_zap != 0) {
   ASSERT(vd->vdev_ops->vdev_op_leaf);
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_VDEV_LEAF_ZAP,
       vd->vdev_leaf_zap);
  }

  if (vd->vdev_top_zap != 0) {
   ASSERT(vd == vd->vdev_top);
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_VDEV_TOP_ZAP,
       vd->vdev_top_zap);
  }
 }

 if (getstats) {
  vdev_stat_t vs;

  vdev_get_stats(vd, &vs);
  fnvlist_add_uint64_array(nv, ZPOOL_CONFIG_VDEV_STATS,
      (uint64_t *)&vs, sizeof (vs) / sizeof (uint64_t));

  root_vdev_actions_getprogress(vd, nv);






  rw_enter(&vd->vdev_indirect_rwlock, RW_READER);
  if (vd->vdev_indirect_mapping != ((void*)0)) {
   ASSERT(vd->vdev_indirect_births != ((void*)0));
   vdev_indirect_mapping_t *vim =
       vd->vdev_indirect_mapping;
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_INDIRECT_SIZE,
       vdev_indirect_mapping_size(vim));
  }
  rw_exit(&vd->vdev_indirect_rwlock);
  if (vd->vdev_mg != ((void*)0) &&
      vd->vdev_mg->mg_fragmentation != ZFS_FRAG_INVALID) {
   uint64_t seg_count = 0;
   uint64_t to_alloc = vd->vdev_stat.vs_alloc;
   for (int i = 0; i < RANGE_TREE_HISTOGRAM_SIZE; i++) {
    if (1ULL << (i + 1) < vdev_removal_max_span) {
     to_alloc +=
         vd->vdev_mg->mg_histogram[i] <<
         i + 1;
    } else {
     seg_count +=
         vd->vdev_mg->mg_histogram[i];
    }
   }






   seg_count += to_alloc / zfs_remove_max_segment;

   fnvlist_add_uint64(nv, ZPOOL_CONFIG_INDIRECT_SIZE,
       seg_count *
       sizeof (vdev_indirect_mapping_entry_phys_t));
  }
 }

 if (!vd->vdev_ops->vdev_op_leaf) {
  nvlist_t **child;
  int c, idx;

  ASSERT(!vd->vdev_ishole);

  child = kmem_alloc(vd->vdev_children * sizeof (nvlist_t *),
      KM_SLEEP);

  for (c = 0, idx = 0; c < vd->vdev_children; c++) {
   vdev_t *cvd = vd->vdev_child[c];






   if ((flags & VDEV_CONFIG_REMOVING) &&
       !cvd->vdev_removing)
    continue;

   child[idx++] = vdev_config_generate(spa, cvd,
       getstats, flags);
  }

  if (idx) {
   fnvlist_add_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
       child, idx);
  }

  for (c = 0; c < idx; c++)
   nvlist_free(child[c]);

  kmem_free(child, vd->vdev_children * sizeof (nvlist_t *));

 } else {
  const char *aux = ((void*)0);

  if (vd->vdev_offline && !vd->vdev_tmpoffline)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_OFFLINE, B_TRUE);
  if (vd->vdev_resilver_txg != 0)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_RESILVER_TXG,
       vd->vdev_resilver_txg);
  if (vd->vdev_faulted)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_FAULTED, B_TRUE);
  if (vd->vdev_degraded)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_DEGRADED, B_TRUE);
  if (vd->vdev_removed)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_REMOVED, B_TRUE);
  if (vd->vdev_unspare)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_UNSPARE, B_TRUE);
  if (vd->vdev_ishole)
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_IS_HOLE, B_TRUE);

  switch (vd->vdev_stat.vs_aux) {
  case 129:
   aux = "err_exceeded";
   break;

  case 128:
   aux = "external";
   break;
  }

  if (aux != ((void*)0))
   fnvlist_add_string(nv, ZPOOL_CONFIG_AUX_STATE, aux);

  if (vd->vdev_splitting && vd->vdev_orig_guid != 0LL) {
   fnvlist_add_uint64(nv, ZPOOL_CONFIG_ORIG_GUID,
       vd->vdev_orig_guid);
  }
 }

 return (nv);
}
