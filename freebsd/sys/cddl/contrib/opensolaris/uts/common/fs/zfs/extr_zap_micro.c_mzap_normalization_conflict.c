
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int zap_avl; } ;
struct TYPE_13__ {scalar_t__ zap_normflags; TYPE_1__ zap_m; } ;
typedef TYPE_2__ zap_t ;
typedef int zap_name_t ;
struct TYPE_14__ {scalar_t__ mze_hash; } ;
typedef TYPE_3__ mzap_ent_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_15__ {int mze_name; } ;


 int AVL_AFTER ;
 int AVL_BEFORE ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MT_NORMALIZE ;
 TYPE_9__* MZE_PHYS (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* avl_walk (int *,TYPE_3__*,int) ;
 scalar_t__ zap_match (int *,int ) ;
 int * zap_name_alloc (TYPE_2__*,int ,int ) ;
 int zap_name_free (int *) ;

__attribute__((used)) static boolean_t
mzap_normalization_conflict(zap_t *zap, zap_name_t *zn, mzap_ent_t *mze)
{
 int direction = AVL_BEFORE;
 boolean_t allocdzn = B_FALSE;

 if (zap->zap_normflags == 0)
  return (B_FALSE);

again:
 for (mzap_ent_t *other = avl_walk(&zap->zap_m.zap_avl, mze, direction);
     other && other->mze_hash == mze->mze_hash;
     other = avl_walk(&zap->zap_m.zap_avl, other, direction)) {

  if (zn == ((void*)0)) {
   zn = zap_name_alloc(zap, MZE_PHYS(zap, mze)->mze_name,
       MT_NORMALIZE);
   allocdzn = B_TRUE;
  }
  if (zap_match(zn, MZE_PHYS(zap, other)->mze_name)) {
   if (allocdzn)
    zap_name_free(zn);
   return (B_TRUE);
  }
 }

 if (direction == AVL_BEFORE) {
  direction = AVL_AFTER;
  goto again;
 }

 if (allocdzn)
  zap_name_free(zn);
 return (B_FALSE);
}
