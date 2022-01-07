
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_dataset_t ;


 scalar_t__ DS_IS_DEFER_DESTROY (int *) ;

uint64_t
dsl_get_defer_destroy(dsl_dataset_t *ds)
{
 return (DS_IS_DEFER_DESTROY(ds) ? 1 : 0);
}
