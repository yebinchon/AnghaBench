
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD64_SET_GSBASE ;
 int sysarch (int ,void**) ;

__attribute__((used)) static int
amd64_set_gsbase_syscall(void *addr)
{

 return (sysarch(AMD64_SET_GSBASE, &addr));
}
