
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_8__ {int sav_count; TYPE_1__** sav_vdevs; } ;
struct TYPE_7__ {TYPE_3__ spa_spares; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_aux_vdev_t ;
typedef int boolean_t ;
struct TYPE_6__ {int vdev_guid; } ;


 int B_FALSE ;
 int B_TRUE ;
 unsigned long long spa_guid (TYPE_2__*) ;
 scalar_t__ spa_spare_exists (int ,unsigned long long*,int*) ;

__attribute__((used)) static boolean_t
spa_has_active_shared_spare(spa_t *spa)
{
 int i, refcnt;
 uint64_t pool;
 spa_aux_vdev_t *sav = &spa->spa_spares;

 for (i = 0; i < sav->sav_count; i++) {
  if (spa_spare_exists(sav->sav_vdevs[i]->vdev_guid, &pool,
      &refcnt) && pool != 0ULL && pool == spa_guid(spa) &&
      refcnt > 2)
   return (B_TRUE);
 }

 return (B_FALSE);
}
