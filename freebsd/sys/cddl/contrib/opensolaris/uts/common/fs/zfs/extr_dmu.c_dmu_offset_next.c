
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef scalar_t__ boolean_t ;


 int DNODE_FIND_HOLE ;
 int FTAG ;
 int dmu_object_wait_synced (int *,int ) ;
 int dnode_hold (int *,int ,int ,int **) ;
 int dnode_next_offset (int *,int ,int *,int,int,int ) ;
 int dnode_rele (int *,int ) ;

int
dmu_offset_next(objset_t *os, uint64_t object, boolean_t hole, uint64_t *off)
{
 dnode_t *dn;
 int err;





 err = dmu_object_wait_synced(os, object);
 if (err) {
  return (err);
 }

 err = dnode_hold(os, object, FTAG, &dn);
 if (err) {
  return (err);
 }

 err = dnode_next_offset(dn, (hole ? DNODE_FIND_HOLE : 0), off, 1, 1, 0);
 dnode_rele(dn, FTAG);

 return (err);
}
