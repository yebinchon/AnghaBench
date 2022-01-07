
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zdm_msg; } ;
typedef TYPE_1__ zfs_dbgmsg_t ;


 int ASSERT0 (int) ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* list_remove_head (int *) ;
 int mutex_destroy (int *) ;
 int strlen (int ) ;
 int zfs_dbgmsg_size ;
 int zfs_dbgmsgs ;
 int zfs_dbgmsgs_lock ;

void
zfs_dbgmsg_fini(void)
{
 zfs_dbgmsg_t *zdm;

 while ((zdm = list_remove_head(&zfs_dbgmsgs)) != ((void*)0)) {
  int size = sizeof (zfs_dbgmsg_t) + strlen(zdm->zdm_msg);
  kmem_free(zdm, size);
  zfs_dbgmsg_size -= size;
 }
 mutex_destroy(&zfs_dbgmsgs_lock);
 ASSERT0(zfs_dbgmsg_size);
}
