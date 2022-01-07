
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int dd_lock; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_8__ {TYPE_1__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_9__ {int ds_unique_bytes; } ;


 TYPE_5__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dir_get_used (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

uint64_t
dsl_get_used(dsl_dataset_t *ds)
{
 if (ds->ds_is_snapshot) {
  return (dsl_dataset_phys(ds)->ds_unique_bytes);
 } else {
  dsl_dir_t *dd = ds->ds_dir;
  mutex_enter(&dd->dd_lock);
  uint64_t val = dsl_dir_get_used(dd);
  mutex_exit(&dd->dd_lock);
  return (val);
 }
}
