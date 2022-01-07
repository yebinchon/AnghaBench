
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;
typedef int Elf_Addr ;


 scalar_t__ RTLD_STATIC_TLS_EXTRA ;
 void* allocate_tls (int *,int *,int,int) ;
 int i386_set_gsbase (void*) ;
 scalar_t__ tls_last_offset ;
 scalar_t__ tls_static_space ;

void
allocate_initial_tls(Obj_Entry *objs)
{
    void* tls;






    tls_static_space = tls_last_offset + RTLD_STATIC_TLS_EXTRA;
    tls = allocate_tls(objs, ((void*)0), 3*sizeof(Elf_Addr), sizeof(Elf_Addr));
    i386_set_gsbase(tls);
}
