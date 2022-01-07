
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int dmu_object_alloc_impl (int *,int ,int,int ,int ,int,int ,int *) ;

uint64_t
dmu_object_alloc(objset_t *os, dmu_object_type_t ot, int blocksize,
    dmu_object_type_t bonustype, int bonuslen, dmu_tx_t *tx)
{
 return (dmu_object_alloc_impl(os, ot, blocksize, 0, bonustype,
     bonuslen, 0, tx));
}
