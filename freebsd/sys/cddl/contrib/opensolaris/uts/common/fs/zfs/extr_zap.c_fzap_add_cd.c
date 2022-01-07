
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zap_ismicro; int zap_rwlock; } ;
typedef TYPE_1__ zap_t ;
struct TYPE_12__ {TYPE_1__* zn_zap; int zn_hash; } ;
typedef TYPE_2__ zap_name_t ;
typedef int zap_leaf_t ;
typedef int zap_entry_handle_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int EAGAIN ;
 int EEXIST ;
 int ENOENT ;
 int RW_LOCK_HELD (int *) ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 scalar_t__ fzap_check (TYPE_2__*,int ,int ) ;
 int zap_deref_leaf (TYPE_1__*,int ,int *,int ,int **) ;
 int zap_entry_create (int *,TYPE_2__*,int ,int ,int ,void const*,int *) ;
 int zap_expand_leaf (TYPE_2__*,int *,void*,int *,int **) ;
 int zap_increment_num_entries (TYPE_1__*,int,int *) ;
 int zap_leaf_lookup (int *,TYPE_2__*,int *) ;
 int zap_put_leaf_maybe_grow_ptrtbl (TYPE_2__*,int *,void*,int *) ;

int
fzap_add_cd(zap_name_t *zn,
    uint64_t integer_size, uint64_t num_integers,
    const void *val, uint32_t cd, void *tag, dmu_tx_t *tx)
{
 zap_leaf_t *l;
 int err;
 zap_entry_handle_t zeh;
 zap_t *zap = zn->zn_zap;

 ASSERT(RW_LOCK_HELD(&zap->zap_rwlock));
 ASSERT(!zap->zap_ismicro);
 ASSERT(fzap_check(zn, integer_size, num_integers) == 0);

 err = zap_deref_leaf(zap, zn->zn_hash, tx, RW_WRITER, &l);
 if (err != 0)
  return (err);
retry:
 err = zap_leaf_lookup(l, zn, &zeh);
 if (err == 0) {
  err = SET_ERROR(EEXIST);
  goto out;
 }
 if (err != ENOENT)
  goto out;

 err = zap_entry_create(l, zn, cd,
     integer_size, num_integers, val, &zeh);

 if (err == 0) {
  zap_increment_num_entries(zap, 1, tx);
 } else if (err == EAGAIN) {
  err = zap_expand_leaf(zn, l, tag, tx, &l);
  zap = zn->zn_zap;
  if (err == 0)
   goto retry;
 }

out:
 if (zap != ((void*)0))
  zap_put_leaf_maybe_grow_ptrtbl(zn, l, tag, tx);
 return (err);
}
