
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zap_name_t ;
struct TYPE_8__ {TYPE_3__* zc_zap; int zc_cd; int zc_hash; int zc_zapobj; int zc_objset; } ;
typedef TYPE_1__ zap_cursor_t ;
struct TYPE_9__ {int mze_cd; int mze_hash; } ;
typedef TYPE_2__ mzap_ent_t ;
typedef int matchtype_t ;
struct TYPE_10__ {int zap_rwlock; int zap_ismicro; } ;


 int ENOENT ;
 int ENOTSUP ;
 int FALSE ;
 int FTAG ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int fzap_cursor_move_to_key (TYPE_1__*,int *) ;
 TYPE_2__* mze_find (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zap_lockdir (int ,int ,int *,int ,int ,int ,int ,TYPE_3__**) ;
 int * zap_name_alloc (TYPE_3__*,char const*,int ) ;
 int zap_name_free (int *) ;

int
zap_cursor_move_to_key(zap_cursor_t *zc, const char *name, matchtype_t mt)
{
 int err = 0;
 mzap_ent_t *mze;
 zap_name_t *zn;

 if (zc->zc_zap == ((void*)0)) {
  err = zap_lockdir(zc->zc_objset, zc->zc_zapobj, ((void*)0),
      RW_READER, TRUE, FALSE, FTAG, &zc->zc_zap);
  if (err)
   return (err);
 } else {
  rw_enter(&zc->zc_zap->zap_rwlock, RW_READER);
 }

 zn = zap_name_alloc(zc->zc_zap, name, mt);
 if (zn == ((void*)0)) {
  rw_exit(&zc->zc_zap->zap_rwlock);
  return (SET_ERROR(ENOTSUP));
 }

 if (!zc->zc_zap->zap_ismicro) {
  err = fzap_cursor_move_to_key(zc, zn);
 } else {
  mze = mze_find(zn);
  if (mze == ((void*)0)) {
   err = SET_ERROR(ENOENT);
   goto out;
  }
  zc->zc_hash = mze->mze_hash;
  zc->zc_cd = mze->mze_cd;
 }

out:
 zap_name_free(zn);
 rw_exit(&zc->zc_zap->zap_rwlock);
 return (err);
}
