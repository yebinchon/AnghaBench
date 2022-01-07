
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int uint64_t ;
struct TYPE_10__ {int ds_object; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int blkptr_cb_t ;
struct TYPE_11__ {int ds_bp; } ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int dp_spa; } ;


 TYPE_6__* dsl_dataset_phys (TYPE_3__*) ;
 int traverse_impl (int ,TYPE_3__*,int ,int *,int ,int *,int,int ,void*) ;

int
traverse_dataset_resume(dsl_dataset_t *ds, uint64_t txg_start,
    zbookmark_phys_t *resume,
    int flags, blkptr_cb_t func, void *arg)
{
 return (traverse_impl(ds->ds_dir->dd_pool->dp_spa, ds, ds->ds_object,
     &dsl_dataset_phys(ds)->ds_bp, txg_start, resume, flags, func, arg));
}
