
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int DMU_OBJECT_END ;
 int MUTEX_HELD (int *) ;
 int TRUE ;
 int TXG_WAIT ;
 int ZVOL_OBJ ;
 int ZVOL_ZAP_OBJ ;
 int dmu_free_long_range (int *,int ,int ,int ) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_zap (int *,int ,int ,int *) ;
 int dmu_tx_mark_netfree (int *) ;
 int zap_update (int *,int ,char*,int,int,int *,int *) ;
 int zfsdev_state_lock ;

__attribute__((used)) static int
zvol_update_volsize(objset_t *os, uint64_t volsize)
{
 dmu_tx_t *tx;
 int error;

 ASSERT(MUTEX_HELD(&zfsdev_state_lock));

 tx = dmu_tx_create(os);
 dmu_tx_hold_zap(tx, ZVOL_ZAP_OBJ, TRUE, ((void*)0));
 dmu_tx_mark_netfree(tx);
 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  dmu_tx_abort(tx);
  return (error);
 }

 error = zap_update(os, ZVOL_ZAP_OBJ, "size", 8, 1,
     &volsize, tx);
 dmu_tx_commit(tx);

 if (error == 0)
  error = dmu_free_long_range(os,
      ZVOL_OBJ, volsize, DMU_OBJECT_END);
 return (error);
}
