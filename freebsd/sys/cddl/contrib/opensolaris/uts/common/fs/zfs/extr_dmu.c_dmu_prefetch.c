
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zio_priority_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int int64_t ;
struct TYPE_7__ {scalar_t__ dn_datablkshift; int dn_datablksz; int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dnode_phys_t ;


 TYPE_1__* DMU_META_DNODE (int *) ;
 int DN_MAX_OBJECT ;
 int FTAG ;
 int MIN (int,int ) ;
 int RW_READER ;
 int dbuf_prefetch (TYPE_1__*,int ,int,int ,int ) ;
 int dbuf_whichblock (TYPE_1__*,int ,int) ;
 int dmu_prefetch_max ;
 int dnode_hold (int *,int,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

void
dmu_prefetch(objset_t *os, uint64_t object, int64_t level, uint64_t offset,
    uint64_t len, zio_priority_t pri)
{
 dnode_t *dn;
 uint64_t blkid;
 int nblks, err;

 if (len == 0) {
  dn = DMU_META_DNODE(os);

  if (object == 0 || object >= DN_MAX_OBJECT)
   return;

  rw_enter(&dn->dn_struct_rwlock, RW_READER);
  blkid = dbuf_whichblock(dn, level,
      object * sizeof (dnode_phys_t));
  dbuf_prefetch(dn, level, blkid, pri, 0);
  rw_exit(&dn->dn_struct_rwlock);
  return;
 }




 len = MIN(len, dmu_prefetch_max);






 err = dnode_hold(os, object, FTAG, &dn);
 if (err != 0)
  return;

 rw_enter(&dn->dn_struct_rwlock, RW_READER);







 if (level > 0 || dn->dn_datablkshift != 0) {
  nblks = dbuf_whichblock(dn, level, offset + len - 1) -
      dbuf_whichblock(dn, level, offset) + 1;
 } else {
  nblks = (offset < dn->dn_datablksz);
 }

 if (nblks != 0) {
  blkid = dbuf_whichblock(dn, level, offset);
  for (int i = 0; i < nblks; i++)
   dbuf_prefetch(dn, level, blkid + i, pri, 0);
 }

 rw_exit(&dn->dn_struct_rwlock);

 dnode_rele(dn, FTAG);
}
