
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int Maxmem ;
 int ptoa (int ) ;

vm_paddr_t
vmm_mem_maxaddr(void)
{

 return (ptoa(Maxmem));
}
