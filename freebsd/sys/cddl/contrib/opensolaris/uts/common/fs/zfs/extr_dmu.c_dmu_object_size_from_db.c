
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_longlong_t ;
struct TYPE_3__ {scalar_t__ dn_num_slots; int dn_phys; int dn_datablksz; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 TYPE_1__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int DN_USED_BYTES (int ) ;
 int SPA_MINBLOCKSHIFT ;
 int SPA_MINBLOCKSIZE ;

void
dmu_object_size_from_db(dmu_buf_t *db_fake, uint32_t *blksize,
    u_longlong_t *nblk512)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dnode_t *dn;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);

 *blksize = dn->dn_datablksz;

 *nblk512 = ((DN_USED_BYTES(dn->dn_phys) + SPA_MINBLOCKSIZE/2) >>
     SPA_MINBLOCKSHIFT) + dn->dn_num_slots;
 DB_DNODE_EXIT(db);
}
