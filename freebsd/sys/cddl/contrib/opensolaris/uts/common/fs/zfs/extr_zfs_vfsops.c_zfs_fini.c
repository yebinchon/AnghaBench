
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taskq_destroy (int ) ;
 int zfs_vnodes_adjust_back () ;
 int zfs_znode_fini () ;
 int zfsctl_fini () ;
 int zfsvfs_taskq ;

void
zfs_fini(void)
{



 zfsctl_fini();
 zfs_znode_fini();
 zfs_vnodes_adjust_back();
}
