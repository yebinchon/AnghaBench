
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int zap_avl; } ;
struct TYPE_13__ {int zap_ismicro; TYPE_1__ zap_m; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
struct TYPE_14__ {int mze_chunkid; int mze_cd; int mze_hash; } ;
typedef TYPE_3__ mzap_ent_t ;
typedef int avl_index_t ;
struct TYPE_15__ {scalar_t__* mze_name; int mze_cd; } ;


 int ASSERT (int) ;
 int EEXIST ;
 int KM_SLEEP ;
 TYPE_9__* MZE_PHYS (TYPE_2__*,TYPE_3__*) ;
 int RW_WRITE_HELD (int *) ;
 int * avl_find (int *,TYPE_3__*,int *) ;
 int avl_insert (int *,TYPE_3__*,int ) ;
 TYPE_3__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_3__*,int) ;

__attribute__((used)) static int
mze_insert(zap_t *zap, int chunkid, uint64_t hash)
{
 avl_index_t idx;

 ASSERT(zap->zap_ismicro);
 ASSERT(RW_WRITE_HELD(&zap->zap_rwlock));

 mzap_ent_t *mze = kmem_alloc(sizeof (mzap_ent_t), KM_SLEEP);
 mze->mze_chunkid = chunkid;
 mze->mze_hash = hash;
 mze->mze_cd = MZE_PHYS(zap, mze)->mze_cd;
 ASSERT(MZE_PHYS(zap, mze)->mze_name[0] != 0);
 if (avl_find(&zap->zap_m.zap_avl, mze, &idx) != ((void*)0)) {
  kmem_free(mze, sizeof (mzap_ent_t));
  return (EEXIST);
 }
 avl_insert(&zap->zap_m.zap_avl, mze, idx);
 return (0);
}
