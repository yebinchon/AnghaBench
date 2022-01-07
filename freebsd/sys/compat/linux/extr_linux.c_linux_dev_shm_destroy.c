
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int dev_shm_cdev ;

void
linux_dev_shm_destroy(void)
{

 destroy_dev(dev_shm_cdev);
}
