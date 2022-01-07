
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int bpobj_t ;
typedef int bpobj_itor_t ;


 int B_TRUE ;
 int bpobj_iterate_impl (int *,int ,void*,int *,int ) ;

int
bpobj_iterate(bpobj_t *bpo, bpobj_itor_t func, void *arg, dmu_tx_t *tx)
{
 return (bpobj_iterate_impl(bpo, func, arg, tx, B_TRUE));
}
