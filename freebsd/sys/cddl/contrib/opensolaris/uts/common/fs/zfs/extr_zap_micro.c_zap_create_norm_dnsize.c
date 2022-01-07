
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int dmu_object_alloc_dnsize (int *,int ,int ,int ,int,int,int *) ;
 int mzap_create_impl (int *,int ,int,int ,int *) ;

uint64_t
zap_create_norm_dnsize(objset_t *os, int normflags, dmu_object_type_t ot,
    dmu_object_type_t bonustype, int bonuslen, int dnodesize, dmu_tx_t *tx)
{
 uint64_t obj = dmu_object_alloc_dnsize(os, ot, 0, bonustype, bonuslen,
     dnodesize, tx);

 mzap_create_impl(os, obj, normflags, 0, tx);
 return (obj);
}
