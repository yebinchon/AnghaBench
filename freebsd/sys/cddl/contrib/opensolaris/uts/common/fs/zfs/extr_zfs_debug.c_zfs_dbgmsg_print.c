
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* zdm_msg; } ;
typedef TYPE_1__ zfs_dbgmsg_t ;


 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,char const*) ;
 int zfs_dbgmsgs ;
 int zfs_dbgmsgs_lock ;

void
zfs_dbgmsg_print(const char *tag)
{
 zfs_dbgmsg_t *zdm;

 (void) printf("ZFS_DBGMSG(%s):\n", tag);
 mutex_enter(&zfs_dbgmsgs_lock);
 for (zdm = list_head(&zfs_dbgmsgs); zdm;
     zdm = list_next(&zfs_dbgmsgs, zdm))
  (void) printf("%s\n", zdm->zdm_msg);
 mutex_exit(&zfs_dbgmsgs_lock);
}
