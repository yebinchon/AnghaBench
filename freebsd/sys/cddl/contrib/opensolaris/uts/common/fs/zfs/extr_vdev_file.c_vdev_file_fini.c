
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taskq_destroy (int ) ;
 int vdev_file_taskq ;

void
vdev_file_fini(void)
{
 taskq_destroy(vdev_file_taskq);
}
