
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_set_pkru {unsigned long len; void* addr; } ;
typedef int a64pkru ;


 int X86_CLEAR_PKRU ;
 int memset (struct amd64_set_pkru*,int ,int) ;
 int sysarch (int ,struct amd64_set_pkru*) ;

int
x86_pkru_unprotect_range(void *addr, unsigned long len)
{
 struct amd64_set_pkru a64pkru;

 memset(&a64pkru, 0, sizeof(a64pkru));
 a64pkru.addr = addr;
 a64pkru.len = len;
 return (sysarch(X86_CLEAR_PKRU, &a64pkru));
}
