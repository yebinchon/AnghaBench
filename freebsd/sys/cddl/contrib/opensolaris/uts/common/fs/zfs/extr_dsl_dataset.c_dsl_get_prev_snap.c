
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dp_origin_snap; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_7__ {scalar_t__ ds_prev; TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_5__ {TYPE_2__* dd_pool; } ;


 int ENOENT ;
 int dsl_dataset_name (scalar_t__,char*) ;

int
dsl_get_prev_snap(dsl_dataset_t *ds, char *snap)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 if (ds->ds_prev != ((void*)0) && ds->ds_prev != dp->dp_origin_snap) {
  dsl_dataset_name(ds->ds_prev, snap);
  return (0);
 } else {
  return (ENOENT);
 }
}
