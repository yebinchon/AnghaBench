
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int EXFLAG_NOALLOC ;
 size_t regions_to_avail (int *,int ,size_t,int *,int *) ;

size_t
arm_physmem_avail(vm_paddr_t *avail, size_t maxavail)
{

 return (regions_to_avail(avail, EXFLAG_NOALLOC, maxavail, ((void*)0), ((void*)0)));
}
