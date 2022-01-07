
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_iflags; int zc_nvlist_conf_size; int zc_nvlist_conf; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int EDOM ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 int get_nvlist (int ,int ,int ,int **) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_nvlist_array (int *,int ,int ***,scalar_t__*) ;
 scalar_t__ spa_bootfs (int *) ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int spa_vdev_add (int *,int *) ;

__attribute__((used)) static int
zfs_ioc_vdev_add(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;
 nvlist_t *config, **l2cache, **spares;
 uint_t nl2cache = 0, nspares = 0;

 error = spa_open(zc->zc_name, &spa, FTAG);
 if (error != 0)
  return (error);

 error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &config);
 (void) nvlist_lookup_nvlist_array(config, ZPOOL_CONFIG_L2CACHE,
     &l2cache, &nl2cache);

 (void) nvlist_lookup_nvlist_array(config, ZPOOL_CONFIG_SPARES,
     &spares, &nspares);
 if (error == 0) {
  error = spa_vdev_add(spa, config);
  nvlist_free(config);
 }
 spa_close(spa, FTAG);
 return (error);
}
