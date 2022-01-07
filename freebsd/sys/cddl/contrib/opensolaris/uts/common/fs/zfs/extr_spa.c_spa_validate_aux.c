
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int spa_l2cache; int spa_spares; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int SPA_VERSION_L2CACHE ;
 int SPA_VERSION_SPARES ;
 int VDEV_LABEL_L2CACHE ;
 int VDEV_LABEL_SPARE ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 scalar_t__ spa_config_held (TYPE_1__*,scalar_t__,int ) ;
 int spa_validate_aux_devs (TYPE_1__*,int *,int ,int,int *,int ,int ,int ) ;

__attribute__((used)) static int
spa_validate_aux(spa_t *spa, nvlist_t *nvroot, uint64_t crtxg, int mode)
{
 int error;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

 if ((error = spa_validate_aux_devs(spa, nvroot, crtxg, mode,
     &spa->spa_spares, ZPOOL_CONFIG_SPARES, SPA_VERSION_SPARES,
     VDEV_LABEL_SPARE)) != 0) {
  return (error);
 }

 return (spa_validate_aux_devs(spa, nvroot, crtxg, mode,
     &spa->spa_l2cache, ZPOOL_CONFIG_L2CACHE, SPA_VERSION_L2CACHE,
     VDEV_LABEL_L2CACHE));
}
