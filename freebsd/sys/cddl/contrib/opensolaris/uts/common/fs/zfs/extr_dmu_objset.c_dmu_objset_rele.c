
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int dsl_pool_t ;


 int * dmu_objset_pool (TYPE_1__*) ;
 int dsl_dataset_rele (int ,void*) ;
 int dsl_pool_rele (int *,void*) ;

void
dmu_objset_rele(objset_t *os, void *tag)
{
 dsl_pool_t *dp = dmu_objset_pool(os);
 dsl_dataset_rele(os->os_dsl_dataset, tag);
 dsl_pool_rele(dp, tag);
}
