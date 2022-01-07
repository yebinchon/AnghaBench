
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;
typedef int Elf_Addr ;


 int AMD64_SET_FSBASE ;
 int CPUID_STDEXT_FSGSBASE ;
 scalar_t__ P_OSREL_WRFSBASE ;
 scalar_t__ RTLD_STATIC_TLS_EXTRA ;
 scalar_t__ __getosreldate () ;
 void* allocate_tls (int *,int ,int,int) ;
 int cpu_stdext_feature ;
 int sysarch (int ,void**) ;
 scalar_t__ tls_last_offset ;
 scalar_t__ tls_static_space ;
 int wrfsbase (uintptr_t) ;

void
allocate_initial_tls(Obj_Entry *objs)
{
 void *addr;






 tls_static_space = tls_last_offset + RTLD_STATIC_TLS_EXTRA;

 addr = allocate_tls(objs, 0, 3 * sizeof(Elf_Addr), sizeof(Elf_Addr));
 if (__getosreldate() >= P_OSREL_WRFSBASE &&
     (cpu_stdext_feature & CPUID_STDEXT_FSGSBASE) != 0)
  wrfsbase((uintptr_t)addr);
 else
  sysarch(AMD64_SET_FSBASE, &addr);
}
