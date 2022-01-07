
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zap_ismicro; } ;
typedef TYPE_1__ zap_t ;
typedef int zap_name_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int mzap_ent_t ;


 int ENOENT ;
 int ENOTSUP ;
 int FALSE ;
 int FTAG ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int fzap_length (int *,int*,int*) ;
 int * mze_find (int *) ;
 int zap_lockdir (int *,int,int *,int ,int ,int ,int ,TYPE_1__**) ;
 int * zap_name_alloc (TYPE_1__*,char const*,int ) ;
 int zap_name_free (int *) ;
 int zap_unlockdir (TYPE_1__*,int ) ;

int
zap_length(objset_t *os, uint64_t zapobj, const char *name,
    uint64_t *integer_size, uint64_t *num_integers)
{
 zap_t *zap;

 int err =
     zap_lockdir(os, zapobj, ((void*)0), RW_READER, TRUE, FALSE, FTAG, &zap);
 if (err != 0)
  return (err);
 zap_name_t *zn = zap_name_alloc(zap, name, 0);
 if (zn == ((void*)0)) {
  zap_unlockdir(zap, FTAG);
  return (SET_ERROR(ENOTSUP));
 }
 if (!zap->zap_ismicro) {
  err = fzap_length(zn, integer_size, num_integers);
 } else {
  mzap_ent_t *mze = mze_find(zn);
  if (mze == ((void*)0)) {
   err = SET_ERROR(ENOENT);
  } else {
   if (integer_size)
    *integer_size = 8;
   if (num_integers)
    *num_integers = 1;
  }
 }
 zap_name_free(zn);
 zap_unlockdir(zap, FTAG);
 return (err);
}
