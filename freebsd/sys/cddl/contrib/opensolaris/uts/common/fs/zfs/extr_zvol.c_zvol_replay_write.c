
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * zv_objset; } ;
typedef TYPE_2__ zvol_state_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {int lrc_reclen; } ;
struct TYPE_7__ {int lr_offset; int lr_length; int lr_blkptr; TYPE_1__ lr_common; } ;
typedef TYPE_3__ lr_write_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int BP_GET_LSIZE (int *) ;
 int TXG_WAIT ;
 int ZVOL_OBJ ;
 int byteswap_uint64_array (TYPE_3__*,int) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_write (int *,int ,int,int) ;
 int dmu_write (int *,int ,int,int,char*,int *) ;

__attribute__((used)) static int
zvol_replay_write(void *arg1, void *arg2, boolean_t byteswap)
{
 zvol_state_t *zv = arg1;
 lr_write_t *lr = arg2;
 objset_t *os = zv->zv_objset;
 char *data = (char *)(lr + 1);
 uint64_t offset, length;
 dmu_tx_t *tx;
 int error;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 offset = lr->lr_offset;
 length = lr->lr_length;


 if (lr->lr_common.lrc_reclen == sizeof (lr_write_t)) {
  uint64_t blocksize = BP_GET_LSIZE(&lr->lr_blkptr);
  if (length < blocksize) {
   offset -= offset % blocksize;
   length = blocksize;
  }
 }

 tx = dmu_tx_create(os);
 dmu_tx_hold_write(tx, ZVOL_OBJ, offset, length);
 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  dmu_tx_abort(tx);
 } else {
  dmu_write(os, ZVOL_OBJ, offset, length, data, tx);
  dmu_tx_commit(tx);
 }

 return (error);
}
