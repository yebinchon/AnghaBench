
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zn_zap; int zn_hash; } ;
typedef TYPE_1__ zap_name_t ;
typedef int zap_leaf_t ;
typedef int zap_entry_handle_t ;
typedef int uint64_t ;
typedef int boolean_t ;


 int RW_READER ;
 int fzap_checkname (TYPE_1__*) ;
 int fzap_checksize (int ,int ) ;
 int zap_deref_leaf (int ,int ,int *,int ,int **) ;
 int zap_entry_normalization_conflict (int *,TYPE_1__*,int *,int ) ;
 int zap_entry_read (int *,int ,int ,void*) ;
 int zap_entry_read_name (int ,int *,int,char*) ;
 int zap_leaf_lookup (int *,TYPE_1__*,int *) ;
 int zap_put_leaf (int *) ;

int
fzap_lookup(zap_name_t *zn,
    uint64_t integer_size, uint64_t num_integers, void *buf,
    char *realname, int rn_len, boolean_t *ncp)
{
 zap_leaf_t *l;
 zap_entry_handle_t zeh;

 int err = fzap_checkname(zn);
 if (err != 0)
  return (err);

 err = zap_deref_leaf(zn->zn_zap, zn->zn_hash, ((void*)0), RW_READER, &l);
 if (err != 0)
  return (err);
 err = zap_leaf_lookup(l, zn, &zeh);
 if (err == 0) {
  if ((err = fzap_checksize(integer_size, num_integers)) != 0) {
   zap_put_leaf(l);
   return (err);
  }

  err = zap_entry_read(&zeh, integer_size, num_integers, buf);
  (void) zap_entry_read_name(zn->zn_zap, &zeh, rn_len, realname);
  if (ncp) {
   *ncp = zap_entry_normalization_conflict(&zeh,
       zn, ((void*)0), zn->zn_zap);
  }
 }

 zap_put_leaf(l);
 return (err);
}
