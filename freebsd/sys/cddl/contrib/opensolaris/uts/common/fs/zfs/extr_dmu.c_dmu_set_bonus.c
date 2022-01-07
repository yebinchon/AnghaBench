
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * dn_bonus; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {int db_size; } ;
typedef TYPE_2__ dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 TYPE_1__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int dnode_setbonuslen (TYPE_1__*,int,int *) ;

int
dmu_set_bonus(dmu_buf_t *db_fake, int newsize, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dnode_t *dn;
 int error;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);

 if (dn->dn_bonus != db) {
  error = SET_ERROR(EINVAL);
 } else if (newsize < 0 || newsize > db_fake->db_size) {
  error = SET_ERROR(EINVAL);
 } else {
  dnode_setbonuslen(dn, newsize, tx);
  error = 0;
 }

 DB_DNODE_EXIT(db);
 return (error);
}
