
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zn_zap; int zn_hash; } ;
typedef TYPE_1__ zap_name_t ;
typedef int zap_leaf_t ;
typedef int zap_entry_handle_t ;
typedef int dmu_tx_t ;


 int RW_WRITER ;
 int zap_deref_leaf (int ,int ,int *,int ,int **) ;
 int zap_entry_remove (int *) ;
 int zap_increment_num_entries (int ,int,int *) ;
 int zap_leaf_lookup (int *,TYPE_1__*,int *) ;
 int zap_put_leaf (int *) ;

int
fzap_remove(zap_name_t *zn, dmu_tx_t *tx)
{
 zap_leaf_t *l;
 int err;
 zap_entry_handle_t zeh;

 err = zap_deref_leaf(zn->zn_zap, zn->zn_hash, tx, RW_WRITER, &l);
 if (err != 0)
  return (err);
 err = zap_leaf_lookup(l, zn, &zeh);
 if (err == 0) {
  zap_entry_remove(&zeh);
  zap_increment_num_entries(zn->zn_zap, -1, tx);
 }
 zap_put_leaf(l);
 return (err);
}
