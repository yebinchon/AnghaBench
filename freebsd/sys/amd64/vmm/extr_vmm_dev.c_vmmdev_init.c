
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int pr_allow_flag ;
 int prison_add_allow (int *,char*,int *,char*) ;
 int vmmdev_mtx ;

void
vmmdev_init(void)
{
 mtx_init(&vmmdev_mtx, "vmm device mutex", ((void*)0), MTX_DEF);
 pr_allow_flag = prison_add_allow(((void*)0), "vmm", ((void*)0),
     "Allow use of vmm in a jail.");
}
