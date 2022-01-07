
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {int zap_object; int * zap_objset; } ;
typedef TYPE_3__ zap_t ;
struct TYPE_17__ {TYPE_3__* zn_zap; } ;
typedef TYPE_4__ zap_name_t ;
typedef int zap_leaf_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_14__ {int lh_prefix_len; scalar_t__ lh_nfree; } ;
struct TYPE_18__ {TYPE_1__ l_hdr; } ;
struct TYPE_15__ {int zt_shift; scalar_t__ zt_nextblk; } ;
struct TYPE_13__ {TYPE_2__ zap_ptrtbl; } ;


 int FALSE ;
 int RW_WRITER ;
 scalar_t__ ZAP_LEAF_LOW_WATER ;
 TYPE_11__* zap_f_phys (TYPE_3__*) ;
 int zap_grow_ptrtbl (TYPE_3__*,int *) ;
 TYPE_9__* zap_leaf_phys (int *) ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,void*,TYPE_3__**) ;
 int zap_put_leaf (int *) ;
 scalar_t__ zap_tryupgradedir (TYPE_3__*,int *) ;
 int zap_unlockdir (TYPE_3__*,void*) ;

__attribute__((used)) static void
zap_put_leaf_maybe_grow_ptrtbl(zap_name_t *zn, zap_leaf_t *l,
    void *tag, dmu_tx_t *tx)
{
 zap_t *zap = zn->zn_zap;
 int shift = zap_f_phys(zap)->zap_ptrtbl.zt_shift;
 int leaffull = (zap_leaf_phys(l)->l_hdr.lh_prefix_len == shift &&
     zap_leaf_phys(l)->l_hdr.lh_nfree < ZAP_LEAF_LOW_WATER);

 zap_put_leaf(l);

 if (leaffull || zap_f_phys(zap)->zap_ptrtbl.zt_nextblk) {




  if (zap_tryupgradedir(zap, tx) == 0) {
   objset_t *os = zap->zap_objset;
   uint64_t zapobj = zap->zap_object;

   zap_unlockdir(zap, tag);
   int err = zap_lockdir(os, zapobj, tx,
       RW_WRITER, FALSE, FALSE, tag, &zn->zn_zap);
   zap = zn->zn_zap;
   if (err != 0)
    return;
  }


  if (zap_f_phys(zap)->zap_ptrtbl.zt_shift == shift)
   (void) zap_grow_ptrtbl(zap, tx);
 }
}
