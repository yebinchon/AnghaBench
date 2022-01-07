
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
typedef int matchtype_t ;
struct TYPE_9__ {int ds_bookmarks; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_10__ {int ds_flags; } ;
struct TYPE_8__ {TYPE_1__* dd_pool; } ;
struct TYPE_7__ {int * dp_meta_objset; } ;


 int DS_FLAG_CI_DATASET ;
 int MT_NORMALIZE ;
 TYPE_4__* dsl_dataset_phys (TYPE_3__*) ;
 int zap_remove_norm (int *,int ,char const*,int ,int *) ;

__attribute__((used)) static int
dsl_dataset_bookmark_remove(dsl_dataset_t *ds, const char *name, dmu_tx_t *tx)
{
 objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
 uint64_t bmark_zapobj = ds->ds_bookmarks;
 matchtype_t mt = 0;

 if (dsl_dataset_phys(ds)->ds_flags & DS_FLAG_CI_DATASET)
  mt = MT_NORMALIZE;

 return (zap_remove_norm(mos, bmark_zapobj, name, mt, tx));
}
