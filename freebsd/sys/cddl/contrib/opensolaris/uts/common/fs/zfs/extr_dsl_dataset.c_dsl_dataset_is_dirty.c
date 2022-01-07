
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_7__ {TYPE_1__* dd_pool; } ;
struct TYPE_6__ {int dp_dirty_datasets; } ;


 int B_FALSE ;
 int B_TRUE ;
 int TXG_SIZE ;
 scalar_t__ txg_list_member (int *,TYPE_3__*,int) ;

boolean_t
dsl_dataset_is_dirty(dsl_dataset_t *ds)
{
 for (int t = 0; t < TXG_SIZE; t++) {
  if (txg_list_member(&ds->ds_dir->dd_pool->dp_dirty_datasets,
      ds, t))
   return (B_TRUE);
 }
 return (B_FALSE);
}
