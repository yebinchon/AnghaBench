
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int MAX (int ,int) ;
 int max_ncpus ;
 int minclsyspri ;
 int taskq_create (char*,int ,int ,int ,int ,int ) ;
 int vdev_file_taskq ;

void
vdev_file_init(void)
{
 vdev_file_taskq = taskq_create("z_vdev_file", MAX(max_ncpus, 16),
     minclsyspri, max_ncpus, INT_MAX, 0);
}
