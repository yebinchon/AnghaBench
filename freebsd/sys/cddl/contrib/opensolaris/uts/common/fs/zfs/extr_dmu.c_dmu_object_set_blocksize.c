
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int dnode_hold (int *,int ,int ,int **) ;
 int dnode_rele (int *,int ) ;
 int dnode_set_blksz (int *,int ,int,int *) ;

int
dmu_object_set_blocksize(objset_t *os, uint64_t object, uint64_t size, int ibs,
    dmu_tx_t *tx)
{
 dnode_t *dn;
 int err;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);
 err = dnode_set_blksz(dn, size, ibs, tx);
 dnode_rele(dn, FTAG);
 return (err);
}
