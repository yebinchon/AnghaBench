
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int dsl_dataset_hold_obj (int *,int ,void*,int **) ;
 int zfs_strtonum (char const*,int *) ;

__attribute__((used)) static int
dsl_dataset_hold_obj_string(dsl_pool_t *dp, const char *dsobj, void *tag,
    dsl_dataset_t **dsp)
{
 return (dsl_dataset_hold_obj(dp, zfs_strtonum(dsobj, ((void*)0)), tag, dsp));
}
