
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ds_remap_deadlist; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;


 int EQUIV (int ,int) ;
 scalar_t__ dsl_dataset_get_remap_deadlist_object (TYPE_1__*) ;
 int dsl_deadlist_is_open (int *) ;

boolean_t
dsl_dataset_remap_deadlist_exists(dsl_dataset_t *ds)
{
 EQUIV(dsl_deadlist_is_open(&ds->ds_remap_deadlist),
     dsl_dataset_get_remap_deadlist_object(ds) != 0);
 return (dsl_deadlist_is_open(&ds->ds_remap_deadlist));
}
