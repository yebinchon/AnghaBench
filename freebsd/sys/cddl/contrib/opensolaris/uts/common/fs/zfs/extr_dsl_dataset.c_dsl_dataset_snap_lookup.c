
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
typedef int matchtype_t ;
struct TYPE_9__ {TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_10__ {int ds_flags; int ds_snapnames_zapobj; } ;
struct TYPE_8__ {TYPE_1__* dd_pool; } ;
struct TYPE_7__ {int * dp_meta_objset; } ;


 int DS_FLAG_CI_DATASET ;
 int ENOTSUP ;
 int MT_NORMALIZE ;
 TYPE_5__* dsl_dataset_phys (TYPE_3__*) ;
 int zap_lookup (int *,int ,char const*,int,int,int *) ;
 int zap_lookup_norm (int *,int ,char const*,int,int,int *,int,int *,int ,int *) ;

int
dsl_dataset_snap_lookup(dsl_dataset_t *ds, const char *name, uint64_t *value)
{
 objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
 uint64_t snapobj = dsl_dataset_phys(ds)->ds_snapnames_zapobj;
 matchtype_t mt = 0;
 int err;

 if (dsl_dataset_phys(ds)->ds_flags & DS_FLAG_CI_DATASET)
  mt = MT_NORMALIZE;

 err = zap_lookup_norm(mos, snapobj, name, 8, 1,
     value, mt, ((void*)0), 0, ((void*)0));
 if (err == ENOTSUP && (mt & MT_NORMALIZE))
  err = zap_lookup(mos, snapobj, name, 8, 1, value);
 return (err);
}
