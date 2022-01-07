
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int dmu_object_claim_dnsize (int *,int ,int ,int ,int ,int,int,int *) ;
 int mzap_create_impl (int *,int ,int,int ,int *) ;

int
zap_create_claim_norm_dnsize(objset_t *os, uint64_t obj, int normflags,
    dmu_object_type_t ot, dmu_object_type_t bonustype, int bonuslen,
    int dnodesize, dmu_tx_t *tx)
{
 int err;

 err = dmu_object_claim_dnsize(os, obj, ot, 0, bonustype, bonuslen,
     dnodesize, tx);
 if (err != 0)
  return (err);
 mzap_create_impl(os, obj, normflags, 0, tx);
 return (0);
}
