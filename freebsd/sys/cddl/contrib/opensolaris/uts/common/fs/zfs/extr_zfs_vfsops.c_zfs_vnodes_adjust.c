
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vm_object {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;


 int desiredvnodes ;
 int desiredvnodes_backup ;
 scalar_t__ maxproc ;
 int min (scalar_t__,int) ;
 TYPE_1__ vm_cnt ;
 int vm_kmem_size ;

__attribute__((used)) static void
zfs_vnodes_adjust(void)
{
}
