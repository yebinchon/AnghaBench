
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int spa_feature_t ;


 int EBUSY ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_sync_task (int ,int ,int ,int *,int,int ) ;
 int spa_name (int *) ;
 int zfs_prop_activate_feature_check ;
 int zfs_prop_activate_feature_sync ;

__attribute__((used)) static int
zfs_prop_activate_feature(spa_t *spa, spa_feature_t feature)
{
 int err;


 err = dsl_sync_task(spa_name(spa),
     zfs_prop_activate_feature_check, zfs_prop_activate_feature_sync,
     &feature, 2, ZFS_SPACE_CHECK_RESERVED);

 if (err != 0 && err != EBUSY)
  return (err);
 else
  return (0);
}
