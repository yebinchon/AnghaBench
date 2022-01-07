
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_20__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;


struct TYPE_23__ {char* za_name; int za_first_integer; } ;
typedef TYPE_1__ zap_cursor_t ;
typedef TYPE_1__ zap_attribute_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int my_ss_cnt ;
typedef int my_fs_cnt ;
struct TYPE_25__ {int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_3__ dsl_pool_t ;
struct TYPE_26__ {char* dd_myname; int dd_object; int dd_dbuf; TYPE_3__* dd_pool; } ;
typedef TYPE_4__ dsl_dir_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef int count ;
struct TYPE_24__ {int ds_snapnames_zapobj; } ;
struct TYPE_22__ {int dd_head_dataset_obj; int dd_child_dir_zapobj; } ;


 int ASSERT (int ) ;
 int DD_FIELD_FILESYSTEM_COUNT ;
 int DD_FIELD_SNAPSHOT_COUNT ;
 int FTAG ;
 int KM_SLEEP ;
 int SPA_FEATURE_FS_SS_LIMIT ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dmu_tx_is_syncing (int *) ;
 int dsl_dataset_hold_obj (TYPE_3__*,int ,int ,int **) ;
 TYPE_20__* dsl_dataset_phys (int *) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dir_hold_obj (TYPE_3__*,int ,int *,int ,TYPE_4__**) ;
 TYPE_15__* dsl_dir_phys (TYPE_4__*) ;
 int dsl_dir_rele (TYPE_4__*,int ) ;
 int dsl_dir_zapify (TYPE_4__*,int *) ;
 int dsl_pool_config_held (TYPE_3__*) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int spa_feature_is_active (int ,int ) ;
 int zap_add (int *,int ,int ,int,int,scalar_t__*,int *) ;
 scalar_t__ zap_contains (int *,int ,int ) ;
 int zap_cursor_advance (TYPE_1__*) ;
 int zap_cursor_fini (TYPE_1__*) ;
 int zap_cursor_init (TYPE_1__*,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (TYPE_1__*,TYPE_1__*) ;
 int zap_lookup (int *,int ,int ,int,int,scalar_t__*) ;

__attribute__((used)) static void
dsl_dir_init_fs_ss_count(dsl_dir_t *dd, dmu_tx_t *tx)
{
 uint64_t my_fs_cnt = 0;
 uint64_t my_ss_cnt = 0;
 dsl_pool_t *dp = dd->dd_pool;
 objset_t *os = dp->dp_meta_objset;
 zap_cursor_t *zc;
 zap_attribute_t *za;
 dsl_dataset_t *ds;

 ASSERT(spa_feature_is_active(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT));
 ASSERT(dsl_pool_config_held(dp));
 ASSERT(dmu_tx_is_syncing(tx));

 dsl_dir_zapify(dd, tx);





 if (zap_contains(os, dd->dd_object, DD_FIELD_FILESYSTEM_COUNT) == 0)
  return;

 zc = kmem_alloc(sizeof (zap_cursor_t), KM_SLEEP);
 za = kmem_alloc(sizeof (zap_attribute_t), KM_SLEEP);


 for (zap_cursor_init(zc, os, dsl_dir_phys(dd)->dd_child_dir_zapobj);
     zap_cursor_retrieve(zc, za) == 0; zap_cursor_advance(zc)) {
  dsl_dir_t *chld_dd;
  uint64_t count;

  VERIFY0(dsl_dir_hold_obj(dp, za->za_first_integer, ((void*)0), FTAG,
      &chld_dd));





  if (chld_dd->dd_myname[0] == '$' ||
      chld_dd->dd_myname[0] == '%') {
   dsl_dir_rele(chld_dd, FTAG);
   continue;
  }

  my_fs_cnt++;

  dsl_dir_init_fs_ss_count(chld_dd, tx);

  VERIFY0(zap_lookup(os, chld_dd->dd_object,
      DD_FIELD_FILESYSTEM_COUNT, sizeof (count), 1, &count));
  my_fs_cnt += count;
  VERIFY0(zap_lookup(os, chld_dd->dd_object,
      DD_FIELD_SNAPSHOT_COUNT, sizeof (count), 1, &count));
  my_ss_cnt += count;

  dsl_dir_rele(chld_dd, FTAG);
 }
 zap_cursor_fini(zc);

 VERIFY0(dsl_dataset_hold_obj(dd->dd_pool,
     dsl_dir_phys(dd)->dd_head_dataset_obj, FTAG, &ds));

 for (zap_cursor_init(zc, os, dsl_dataset_phys(ds)->ds_snapnames_zapobj);
     zap_cursor_retrieve(zc, za) == 0;
     zap_cursor_advance(zc)) {

  if (za->za_name[0] != '%')
   my_ss_cnt++;
 }
 zap_cursor_fini(zc);

 dsl_dataset_rele(ds, FTAG);

 kmem_free(zc, sizeof (zap_cursor_t));
 kmem_free(za, sizeof (zap_attribute_t));


 dmu_buf_will_dirty(dd->dd_dbuf, tx);
 VERIFY0(zap_add(os, dd->dd_object, DD_FIELD_FILESYSTEM_COUNT,
     sizeof (my_fs_cnt), 1, &my_fs_cnt, tx));
 VERIFY0(zap_add(os, dd->dd_object, DD_FIELD_SNAPSHOT_COUNT,
     sizeof (my_ss_cnt), 1, &my_ss_cnt, tx));
}
