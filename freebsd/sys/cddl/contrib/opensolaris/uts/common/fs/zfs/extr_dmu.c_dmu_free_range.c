
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int FTAG ;
 unsigned long long UINT64_MAX ;
 int dnode_free_range (int *,unsigned long long,unsigned long long,int *) ;
 int dnode_hold (int *,unsigned long long,int ,int **) ;
 int dnode_rele (int *,int ) ;

int
dmu_free_range(objset_t *os, uint64_t object, uint64_t offset,
    uint64_t size, dmu_tx_t *tx)
{
 dnode_t *dn;
 int err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);
 ASSERT(offset < UINT64_MAX);
 ASSERT(size == -1ULL || size <= UINT64_MAX - offset);
 dnode_free_range(dn, offset, size, tx);
 dnode_rele(dn, FTAG);
 return (0);
}
