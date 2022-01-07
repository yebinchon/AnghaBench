
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD64_SET_FSBASE ;
 int sysarch (int ,void**) ;

__attribute__((used)) static int
amd64_set_fsbase_syscall(void *addr)
{

 return (sysarch(AMD64_SET_FSBASE, &addr));
}
