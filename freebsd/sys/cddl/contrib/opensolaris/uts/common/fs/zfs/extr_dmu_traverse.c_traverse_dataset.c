
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_dataset_t ;
typedef int blkptr_cb_t ;


 int traverse_dataset_resume (int *,int ,int *,int,int ,void*) ;

int
traverse_dataset(dsl_dataset_t *ds, uint64_t txg_start,
    int flags, blkptr_cb_t func, void *arg)
{
 return (traverse_dataset_resume(ds, txg_start, ((void*)0), flags, func, arg));
}
