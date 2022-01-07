
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dn_bonus; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 TYPE_1__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int DMU_OT_IS_VALID (int ) ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int dnode_setbonus_type (TYPE_1__*,int ,int *) ;

int
dmu_set_bonustype(dmu_buf_t *db_fake, dmu_object_type_t type, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dnode_t *dn;
 int error;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);

 if (!DMU_OT_IS_VALID(type)) {
  error = SET_ERROR(EINVAL);
 } else if (dn->dn_bonus != db) {
  error = SET_ERROR(EINVAL);
 } else {
  dnode_setbonus_type(dn, type, tx);
  error = 0;
 }

 DB_DNODE_EXIT(db);
 return (error);
}
