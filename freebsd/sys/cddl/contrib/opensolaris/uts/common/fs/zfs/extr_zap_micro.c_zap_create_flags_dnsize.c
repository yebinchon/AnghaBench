
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_flags_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int ASSERT (int) ;
 int SPA_MINBLOCKSHIFT ;
 int SPA_OLD_MAXBLOCKSHIFT ;
 int VERIFY (int) ;
 int dmu_object_alloc_dnsize (int *,int ,int ,int ,int,int,int *) ;
 scalar_t__ dmu_object_set_blocksize (int *,int ,unsigned long long,int,int *) ;
 int mzap_create_impl (int *,int ,int,int ,int *) ;

uint64_t
zap_create_flags_dnsize(objset_t *os, int normflags, zap_flags_t flags,
    dmu_object_type_t ot, int leaf_blockshift, int indirect_blockshift,
    dmu_object_type_t bonustype, int bonuslen, int dnodesize, dmu_tx_t *tx)
{
 uint64_t obj = dmu_object_alloc_dnsize(os, ot, 0, bonustype, bonuslen,
     dnodesize, tx);

 ASSERT(leaf_blockshift >= SPA_MINBLOCKSHIFT &&
     leaf_blockshift <= SPA_OLD_MAXBLOCKSHIFT &&
     indirect_blockshift >= SPA_MINBLOCKSHIFT &&
     indirect_blockshift <= SPA_OLD_MAXBLOCKSHIFT);

 VERIFY(dmu_object_set_blocksize(os, obj,
     1ULL << leaf_blockshift, indirect_blockshift, tx) == 0);

 mzap_create_impl(os, obj, normflags, flags, tx);
 return (obj);
}
