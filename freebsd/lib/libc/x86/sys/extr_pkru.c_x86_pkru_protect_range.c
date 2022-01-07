
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct amd64_set_pkru {unsigned long len; int flags; int keyidx; void* addr; } ;
typedef int a64pkru ;


 int X86_SET_PKRU ;
 int memset (struct amd64_set_pkru*,int ,int) ;
 int sysarch (int ,struct amd64_set_pkru*) ;

int
x86_pkru_protect_range(void *addr, unsigned long len, u_int keyidx, int flags)
{
 struct amd64_set_pkru a64pkru;

 memset(&a64pkru, 0, sizeof(a64pkru));
 a64pkru.addr = addr;
 a64pkru.len = len;
 a64pkru.keyidx = keyidx;
 a64pkru.flags = flags;
 return (sysarch(X86_SET_PKRU, &a64pkru));
}
