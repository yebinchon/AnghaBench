
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int spa_destroy (int ) ;
 int zfs_log_history (TYPE_1__*) ;
 int zvol_remove_minors (int ) ;

__attribute__((used)) static int
zfs_ioc_pool_destroy(zfs_cmd_t *zc)
{
 int error;
 zfs_log_history(zc);
 error = spa_destroy(zc->zc_name);
 if (error == 0)
  zvol_remove_minors(zc->zc_name);
 return (error);
}
