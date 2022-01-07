
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int sav_count; int sav_npending; int * sav_pending; TYPE_1__** sav_vdevs; } ;
struct TYPE_6__ {TYPE_3__ spa_spares; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_aux_vdev_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ vdev_guid; } ;


 int B_FALSE ;
 int B_TRUE ;
 int ZPOOL_CONFIG_GUID ;
 scalar_t__ nvlist_lookup_uint64 (int ,int ,scalar_t__*) ;

boolean_t
spa_has_spare(spa_t *spa, uint64_t guid)
{
 int i;
 uint64_t spareguid;
 spa_aux_vdev_t *sav = &spa->spa_spares;

 for (i = 0; i < sav->sav_count; i++)
  if (sav->sav_vdevs[i]->vdev_guid == guid)
   return (B_TRUE);

 for (i = 0; i < sav->sav_npending; i++) {
  if (nvlist_lookup_uint64(sav->sav_pending[i], ZPOOL_CONFIG_GUID,
      &spareguid) == 0 && spareguid == guid)
   return (B_TRUE);
 }

 return (B_FALSE);
}
