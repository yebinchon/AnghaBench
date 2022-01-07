
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int dd_lock; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_7__ {TYPE_1__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_2__ dsl_dataset_t ;


 int dsl_dir_get_compressratio (TYPE_1__*) ;
 int dsl_get_refratio (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

uint64_t
dsl_get_compressratio(dsl_dataset_t *ds)
{
 if (ds->ds_is_snapshot) {
  return (dsl_get_refratio(ds));
 } else {
  dsl_dir_t *dd = ds->ds_dir;
  mutex_enter(&dd->dd_lock);
  uint64_t val = dsl_dir_get_compressratio(dd);
  mutex_exit(&dd->dd_lock);
  return (val);
 }
}
