
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_dataset_t ;


 int dsl_prop_get_ds (int *,char const*,int,int,int *,int *) ;

int
dsl_prop_get_int_ds(dsl_dataset_t *ds, const char *propname,
    uint64_t *valuep)
{
 return (dsl_prop_get_ds(ds, propname, 8, 1, valuep, ((void*)0)));
}
