
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef scalar_t__ u_short ;
struct ucred {int dummy; } ;



__attribute__((used)) static int
tegra_gem_pager_ctor(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t foff, struct ucred *cred, u_short *color)
{

 if (color != ((void*)0))
  *color = 0;
 return (0);
}
