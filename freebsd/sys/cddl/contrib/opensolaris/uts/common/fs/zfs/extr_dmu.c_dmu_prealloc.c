
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_buf_t ;


 int FALSE ;
 int FTAG ;
 int VERIFY (int) ;
 scalar_t__ dmu_buf_hold_array (int *,scalar_t__,scalar_t__,scalar_t__,int ,int ,int*,int ***) ;
 int dmu_buf_rele_array (int **,int,int ) ;
 int dmu_buf_will_not_fill (int *,int *) ;

void
dmu_prealloc(objset_t *os, uint64_t object, uint64_t offset, uint64_t size,
    dmu_tx_t *tx)
{
 dmu_buf_t **dbp;
 int numbufs, i;

 if (size == 0)
  return;

 VERIFY(0 == dmu_buf_hold_array(os, object, offset, size,
     FALSE, FTAG, &numbufs, &dbp));

 for (i = 0; i < numbufs; i++) {
  dmu_buf_t *db = dbp[i];

  dmu_buf_will_not_fill(db, tx);
 }
 dmu_buf_rele_array(dbp, numbufs, FTAG);
}
