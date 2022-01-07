
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_longholds; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;


 int zfs_refcount_is_zero (int *) ;

boolean_t
dsl_dataset_long_held(dsl_dataset_t *ds)
{
 return (!zfs_refcount_is_zero(&ds->ds_longholds));
}
