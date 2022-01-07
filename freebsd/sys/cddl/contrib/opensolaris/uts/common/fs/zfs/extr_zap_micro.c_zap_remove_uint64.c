
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int zap_name_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int ENOTSUP ;
 int FALSE ;
 int FTAG ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int fzap_remove (int *,int *) ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,int **) ;
 int * zap_name_alloc_uint64 (int *,int const*,int) ;
 int zap_name_free (int *) ;
 int zap_unlockdir (int *,int ) ;

int
zap_remove_uint64(objset_t *os, uint64_t zapobj, const uint64_t *key,
    int key_numints, dmu_tx_t *tx)
{
 zap_t *zap;

 int err =
     zap_lockdir(os, zapobj, tx, RW_WRITER, TRUE, FALSE, FTAG, &zap);
 if (err != 0)
  return (err);
 zap_name_t *zn = zap_name_alloc_uint64(zap, key, key_numints);
 if (zn == ((void*)0)) {
  zap_unlockdir(zap, FTAG);
  return (SET_ERROR(ENOTSUP));
 }
 err = fzap_remove(zn, tx);
 zap_name_free(zn);
 zap_unlockdir(zap, FTAG);
 return (err);
}
