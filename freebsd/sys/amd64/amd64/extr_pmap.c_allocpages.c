
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int u_int64_t ;


 int PAGE_SIZE ;
 int bzero (void*,int) ;

__attribute__((used)) static u_int64_t
allocpages(vm_paddr_t *firstaddr, int n)
{
 u_int64_t ret;

 ret = *firstaddr;
 bzero((void *)ret, n * PAGE_SIZE);
 *firstaddr += n * PAGE_SIZE;
 return (ret);
}
