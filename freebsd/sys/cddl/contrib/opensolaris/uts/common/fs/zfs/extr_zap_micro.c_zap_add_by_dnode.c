
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int RW_WRITER ;
 int TRUE ;
 int zap_add_impl (int *,char const*,int,int ,void const*,int *,int ) ;
 int zap_lockdir_by_dnode (int *,int *,int ,int ,int ,int ,int **) ;

int
zap_add_by_dnode(dnode_t *dn, const char *key,
    int integer_size, uint64_t num_integers,
    const void *val, dmu_tx_t *tx)
{
 zap_t *zap;
 int err;

 err = zap_lockdir_by_dnode(dn, tx, RW_WRITER, TRUE, TRUE, FTAG, &zap);
 if (err != 0)
  return (err);
 err = zap_add_impl(zap, key, integer_size, num_integers, val, tx, FTAG);

 return (err);
}
