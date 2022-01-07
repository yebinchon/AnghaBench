
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_soft_state_t ;


 int MUTEX_DEFAULT ;
 int VERIFY (int) ;
 int ZFS_LOG (int,char*) ;
 scalar_t__ ddi_soft_state_init (int *,int,int) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfsdev_state ;
 int zfsdev_state_lock ;

void
zvol_init(void)
{
 VERIFY(ddi_soft_state_init(&zfsdev_state, sizeof (zfs_soft_state_t),
     1) == 0);



 ZFS_LOG(1, "ZVOL Initialized.");

}
