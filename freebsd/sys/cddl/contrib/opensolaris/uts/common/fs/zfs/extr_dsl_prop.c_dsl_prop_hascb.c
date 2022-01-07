
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_prop_cbs; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;


 int list_is_empty (int *) ;

boolean_t
dsl_prop_hascb(dsl_dataset_t *ds)
{
 return (!list_is_empty(&ds->ds_prop_cbs));
}
