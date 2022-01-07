
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int spa_vdev_top_lock; int spa_name; } ;
typedef TYPE_1__ spa_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ESC_ZFS_POOL_REGUID ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_sync_task (int ,int ,int ,int *,int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_change_guid_check ;
 int spa_change_guid_sync ;
 int spa_event_notify (TYPE_1__*,int *,int *,int ) ;
 int spa_generate_guid (int *) ;
 int spa_namespace_lock ;
 int spa_write_cachefile (TYPE_1__*,int ,int ) ;

int
spa_change_guid(spa_t *spa)
{
 int error;
 uint64_t guid;

 mutex_enter(&spa->spa_vdev_top_lock);
 mutex_enter(&spa_namespace_lock);
 guid = spa_generate_guid(((void*)0));

 error = dsl_sync_task(spa->spa_name, spa_change_guid_check,
     spa_change_guid_sync, &guid, 5, ZFS_SPACE_CHECK_RESERVED);

 if (error == 0) {
  spa_write_cachefile(spa, B_FALSE, B_TRUE);
  spa_event_notify(spa, ((void*)0), ((void*)0), ESC_ZFS_POOL_REGUID);
 }

 mutex_exit(&spa_namespace_lock);
 mutex_exit(&spa->spa_vdev_top_lock);

 return (error);
}
