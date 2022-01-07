
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;
typedef int Elf_Addr ;


 scalar_t__ RTLD_STATIC_TLS_EXTRA ;
 int * allocate_tls (int *,int *,int,int) ;
 scalar_t__ tls_last_offset ;
 scalar_t__ tls_static_space ;

void
allocate_initial_tls(Obj_Entry *objs)
{
 Elf_Addr* tpval;





 tls_static_space = tls_last_offset + RTLD_STATIC_TLS_EXTRA;
 tpval = allocate_tls(objs, ((void*)0), 3 * sizeof(Elf_Addr),
      sizeof(Elf_Addr));
 __asm __volatile("mov %0, %%g7" : : "r" (tpval));
}
