
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_10__ {TYPE_4__* os_dsl_dataset; } ;
typedef TYPE_3__ objset_t ;
struct TYPE_11__ {TYPE_2__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_12__ {scalar_t__ ds_snapnames_zapobj; } ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int dp_meta_objset; } ;


 int ENOENT ;
 int MT_NORMALIZE ;
 int SET_ERROR (int ) ;
 TYPE_5__* dsl_dataset_phys (TYPE_4__*) ;
 int zap_lookup_norm (int ,scalar_t__,char*,int,int,int *,int ,char*,int,int *) ;

int
dmu_snapshot_realname(objset_t *os, char *name, char *real, int maxlen,
    boolean_t *conflict)
{
 dsl_dataset_t *ds = os->os_dsl_dataset;
 uint64_t ignored;

 if (dsl_dataset_phys(ds)->ds_snapnames_zapobj == 0)
  return (SET_ERROR(ENOENT));

 return (zap_lookup_norm(ds->ds_dir->dd_pool->dp_meta_objset,
     dsl_dataset_phys(ds)->ds_snapnames_zapobj, name, 8, 1, &ignored,
     MT_NORMALIZE, real, maxlen, conflict));
}
