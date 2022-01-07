
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_cookie; scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; int zc_string; int zc_iflags; int zc_nvlist_src; int zc_nvlist_conf; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int FTAG ;
 int ZPOOL_EXPORT_AFTER_SPLIT ;
 int get_nvlist (int ,scalar_t__,int ,int **) ;
 int nvlist_free (int *) ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int spa_vdev_split_mirror (int *,int ,int *,int *,int) ;

__attribute__((used)) static int
zfs_ioc_vdev_split(zfs_cmd_t *zc)
{
 spa_t *spa;
 nvlist_t *config, *props = ((void*)0);
 int error;
 boolean_t exp = !!(zc->zc_cookie & ZPOOL_EXPORT_AFTER_SPLIT);

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0)
  return (error);

 if (error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &config)) {
  spa_close(spa, FTAG);
  return (error);
 }

 if (zc->zc_nvlist_src_size != 0 && (error =
     get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &props))) {
  spa_close(spa, FTAG);
  nvlist_free(config);
  return (error);
 }

 error = spa_vdev_split_mirror(spa, zc->zc_string, config, props, exp);

 spa_close(spa, FTAG);

 nvlist_free(config);
 nvlist_free(props);

 return (error);
}
