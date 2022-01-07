
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; int zc_iflags; int zc_nvlist_src_size; int zc_nvlist_src; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int ZPOOL_PROP_CACHEFILE ;
 int get_nvlist (int ,int ,int ,int **) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int spa_close (int *,int ) ;
 int spa_configfile_set (int *,int *,int ) ;
 int * spa_lookup (int ) ;
 int spa_namespace_lock ;
 int spa_open (int ,int **,int ) ;
 int spa_prop_set (int *,int *) ;
 int spa_write_cachefile (int *,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int zpool_prop_to_name (int ) ;

__attribute__((used)) static int
zfs_ioc_pool_set_props(zfs_cmd_t *zc)
{
 nvlist_t *props;
 spa_t *spa;
 int error;
 nvpair_t *pair;

 if (error = get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &props))
  return (error);





 pair = nvlist_next_nvpair(props, ((void*)0));
 if (pair != ((void*)0) && strcmp(nvpair_name(pair),
     zpool_prop_to_name(ZPOOL_PROP_CACHEFILE)) == 0 &&
     nvlist_next_nvpair(props, pair) == ((void*)0)) {
  mutex_enter(&spa_namespace_lock);
  if ((spa = spa_lookup(zc->zc_name)) != ((void*)0)) {
   spa_configfile_set(spa, props, B_FALSE);
   spa_write_cachefile(spa, B_FALSE, B_TRUE);
  }
  mutex_exit(&spa_namespace_lock);
  if (spa != ((void*)0)) {
   nvlist_free(props);
   return (0);
  }
 }

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0) {
  nvlist_free(props);
  return (error);
 }

 error = spa_prop_set(spa, props);

 nvlist_free(props);
 spa_close(spa, FTAG);

 return (error);
}
