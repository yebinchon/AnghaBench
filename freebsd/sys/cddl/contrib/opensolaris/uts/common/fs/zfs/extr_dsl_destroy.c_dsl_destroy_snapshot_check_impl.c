
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ds_userrefs; TYPE_2__* ds_dir; int ds_is_snapshot; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int ds_num_children; } ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int dp_spa; } ;


 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_USERREFS ;
 scalar_t__ dsl_dataset_long_held (TYPE_3__*) ;
 TYPE_5__* dsl_dataset_phys (TYPE_3__*) ;
 scalar_t__ spa_version (int ) ;

int
dsl_destroy_snapshot_check_impl(dsl_dataset_t *ds, boolean_t defer)
{
 if (!ds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));

 if (dsl_dataset_long_held(ds))
  return (SET_ERROR(EBUSY));





 if (defer) {
  if (spa_version(ds->ds_dir->dd_pool->dp_spa) <
      SPA_VERSION_USERREFS)
   return (SET_ERROR(ENOTSUP));
  return (0);
 }





 if (ds->ds_userrefs > 0)
  return (SET_ERROR(EBUSY));




 if (dsl_dataset_phys(ds)->ds_num_children > 1)
  return (SET_ERROR(EEXIST));

 return (0);
}
