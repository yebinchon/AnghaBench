
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int u_int ;


 int PAGE_SIZE ;
 int last_paddr ;

vm_paddr_t
pmap_preboot_get_pages(u_int num)
{
 vm_paddr_t ret;

 ret = last_paddr;
 last_paddr += num * PAGE_SIZE;

 return (ret);
}
