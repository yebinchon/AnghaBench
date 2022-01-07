
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_LOG (int,char*) ;
 int ddi_soft_state_fini (int *) ;
 int mutex_destroy (int *) ;
 int zfsdev_state ;
 int zfsdev_state_lock ;

void
zvol_fini(void)
{



 ddi_soft_state_fini(&zfsdev_state);
 ZFS_LOG(1, "ZVOL Deinitialized.");
}
