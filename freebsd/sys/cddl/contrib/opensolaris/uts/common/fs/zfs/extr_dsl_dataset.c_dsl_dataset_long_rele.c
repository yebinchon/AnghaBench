
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_longholds; } ;
typedef TYPE_1__ dsl_dataset_t ;


 int zfs_refcount_remove (int *,void*) ;

void
dsl_dataset_long_rele(dsl_dataset_t *ds, void *tag)
{
 (void) zfs_refcount_remove(&ds->ds_longholds, tag);
}
