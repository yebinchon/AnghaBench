
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zn_key_orig_numints; int zn_key_intlen; int zn_hash; } ;
typedef TYPE_1__ zap_name_t ;
typedef int zap_leaf_t ;
struct TYPE_9__ {int zeh_cd; int zeh_hash; } ;
typedef TYPE_2__ zap_entry_handle_t ;
struct TYPE_10__ {int zc_cd; int zc_hash; int * zc_leaf; int zc_zap; } ;
typedef TYPE_3__ zap_cursor_t ;


 int ENAMETOOLONG ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int ZAP_MAXNAMELEN ;
 int zap_deref_leaf (int ,int ,int *,int ,int **) ;
 int zap_leaf_lookup (int *,TYPE_1__*,TYPE_2__*) ;

int
fzap_cursor_move_to_key(zap_cursor_t *zc, zap_name_t *zn)
{
 int err;
 zap_leaf_t *l;
 zap_entry_handle_t zeh;

 if (zn->zn_key_orig_numints * zn->zn_key_intlen > ZAP_MAXNAMELEN)
  return (SET_ERROR(ENAMETOOLONG));

 err = zap_deref_leaf(zc->zc_zap, zn->zn_hash, ((void*)0), RW_READER, &l);
 if (err != 0)
  return (err);

 err = zap_leaf_lookup(l, zn, &zeh);
 if (err != 0)
  return (err);

 zc->zc_leaf = l;
 zc->zc_hash = zeh.zeh_hash;
 zc->zc_cd = zeh.zeh_cd;

 return (err);
}
