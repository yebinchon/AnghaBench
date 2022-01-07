
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int FTAG ;
 int RW_WRITER ;
 int SCL_CONFIG ;
 scalar_t__ fnvlist_lookup_boolean_value (int *,char*) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int spa_get_dsl (TYPE_1__*) ;
 int spa_open (char const*,TYPE_1__**,int ) ;
 int txg_wait_synced (int ,int ) ;
 int vdev_config_dirty (int ) ;

__attribute__((used)) static int
zfs_ioc_pool_sync(const char *pool, nvlist_t *innvl, nvlist_t *onvl)
{
 int err;
 boolean_t force;
 spa_t *spa;

 if ((err = spa_open(pool, &spa, FTAG)) != 0)
  return (err);

 force = fnvlist_lookup_boolean_value(innvl, "force");
 if (force) {
  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_WRITER);
  vdev_config_dirty(spa->spa_root_vdev);
  spa_config_exit(spa, SCL_CONFIG, FTAG);
 }
 txg_wait_synced(spa_get_dsl(spa), 0);

 spa_close(spa, FTAG);

 return (err);
}
