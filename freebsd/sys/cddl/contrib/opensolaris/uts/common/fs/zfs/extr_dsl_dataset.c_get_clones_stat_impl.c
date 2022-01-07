
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_12__ {int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_13__ {TYPE_6__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_next_clones_obj; int ds_num_children; } ;
struct TYPE_15__ {TYPE_5__* dd_pool; } ;
struct TYPE_14__ {int * dp_meta_objset; } ;


 int ASSERT (int ) ;
 int ENOENT ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_hold_obj (TYPE_5__*,int ,int ,TYPE_2__**) ;
 TYPE_8__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dir_name (TYPE_6__*,char*) ;
 int dsl_pool_config_held (TYPE_5__*) ;
 int fnvlist_add_boolean (int *,char*) ;
 int zap_count (int *,scalar_t__,int*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,scalar_t__) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

int
get_clones_stat_impl(dsl_dataset_t *ds, nvlist_t *val)
{
 uint64_t count = 0;
 objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
 zap_cursor_t zc;
 zap_attribute_t za;

 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool));






 if (dsl_dataset_phys(ds)->ds_next_clones_obj != 0) {
  VERIFY0(zap_count(mos, dsl_dataset_phys(ds)->ds_next_clones_obj,
      &count));
 }
 if (count != dsl_dataset_phys(ds)->ds_num_children - 1) {
  return (ENOENT);
 }
 for (zap_cursor_init(&zc, mos,
     dsl_dataset_phys(ds)->ds_next_clones_obj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  dsl_dataset_t *clone;
  char buf[ZFS_MAX_DATASET_NAME_LEN];
  VERIFY0(dsl_dataset_hold_obj(ds->ds_dir->dd_pool,
      za.za_first_integer, FTAG, &clone));
  dsl_dir_name(clone->ds_dir, buf);
  fnvlist_add_boolean(val, buf);
  dsl_dataset_rele(clone, FTAG);
 }
 zap_cursor_fini(&zc);
 return (0);
}
