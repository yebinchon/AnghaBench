
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int zc_cookie; scalar_t__ zc_nvlist_src; int zc_guid; int zc_name; int zc_iflags; int zc_nvlist_src_size; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int vdev_t ;
struct TYPE_17__ {scalar_t__ spa_last_open_failed; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int FTAG ;
 int SCL_NONE ;
 int SET_ERROR (int ) ;
 int SPA_LOG_CLEAR ;
 scalar_t__ SPA_LOG_MISSING ;
 int ZPOOL_NO_REWIND ;
 int get_nvlist (scalar_t__,int ,int ,int **) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int spa_close (TYPE_2__*,int ) ;
 scalar_t__ spa_get_log_state (TYPE_2__*) ;
 TYPE_2__* spa_lookup (int ) ;
 int * spa_lookup_by_guid (TYPE_2__*,int ,int ) ;
 int spa_namespace_lock ;
 int spa_open (int ,TYPE_2__**,int ) ;
 int spa_open_rewind (int ,TYPE_2__**,int ,int *,int **) ;
 int spa_set_log_state (TYPE_2__*,int ) ;
 int spa_vdev_state_enter (TYPE_2__*,int ) ;
 int spa_vdev_state_exit (TYPE_2__*,int *,int ) ;
 int vdev_clear (TYPE_2__*,int *) ;
 scalar_t__ zio_resume (TYPE_2__*) ;

__attribute__((used)) static int
zfs_ioc_clear(zfs_cmd_t *zc)
{
 spa_t *spa;
 vdev_t *vd;
 int error;




 mutex_enter(&spa_namespace_lock);
 spa = spa_lookup(zc->zc_name);
 if (spa == ((void*)0)) {
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(EIO));
 }
 if (spa_get_log_state(spa) == SPA_LOG_MISSING) {

  spa_set_log_state(spa, SPA_LOG_CLEAR);
 }
 spa->spa_last_open_failed = 0;
 mutex_exit(&spa_namespace_lock);

 if (zc->zc_cookie & ZPOOL_NO_REWIND) {
  error = spa_open(zc->zc_name, &spa, FTAG);
 } else {
  nvlist_t *policy;
  nvlist_t *config = ((void*)0);

  if (zc->zc_nvlist_src == 0)
   return (SET_ERROR(EINVAL));

  if ((error = get_nvlist(zc->zc_nvlist_src,
      zc->zc_nvlist_src_size, zc->zc_iflags, &policy)) == 0) {
   error = spa_open_rewind(zc->zc_name, &spa, FTAG,
       policy, &config);
   if (config != ((void*)0)) {
    int err;

    if ((err = put_nvlist(zc, config)) != 0)
     error = err;
    nvlist_free(config);
   }
   nvlist_free(policy);
  }
 }

 if (error != 0)
  return (error);

 spa_vdev_state_enter(spa, SCL_NONE);

 if (zc->zc_guid == 0) {
  vd = ((void*)0);
 } else {
  vd = spa_lookup_by_guid(spa, zc->zc_guid, B_TRUE);
  if (vd == ((void*)0)) {
   (void) spa_vdev_state_exit(spa, ((void*)0), ENODEV);
   spa_close(spa, FTAG);
   return (SET_ERROR(ENODEV));
  }
 }

 vdev_clear(spa, vd);

 (void) spa_vdev_state_exit(spa, ((void*)0), 0);




 if (zio_resume(spa) != 0)
  error = SET_ERROR(EIO);

 spa_close(spa, FTAG);

 return (error);
}
