
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_buf_t ;


 int DMU_READ_PREFETCH ;
 int FTAG ;
 int dmu_buf_hold_array_by_dnode (int *,int ,int ,int,void*,int*,int ***,int ) ;
 int dnode_hold (int *,int ,int ,int **) ;
 int dnode_rele (int *,int ) ;

__attribute__((used)) static int
dmu_buf_hold_array(objset_t *os, uint64_t object, uint64_t offset,
    uint64_t length, int read, void *tag, int *numbufsp, dmu_buf_t ***dbpp)
{
 dnode_t *dn;
 int err;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err)
  return (err);

 err = dmu_buf_hold_array_by_dnode(dn, offset, length, read, tag,
     numbufsp, dbpp, DMU_READ_PREFETCH);

 dnode_rele(dn, FTAG);

 return (err);
}
