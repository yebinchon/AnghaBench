
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;
typedef int Elf_Addr ;


 scalar_t__ RTLD_STATIC_TLS_EXTRA ;
 int TLS_TCB_SIZE ;
 int TLS_TP_OFFSET ;
 scalar_t__ allocate_tls (int *,int *,int,int) ;
 scalar_t__ tls_last_offset ;
 scalar_t__ tls_last_size ;
 scalar_t__ tls_static_space ;

void
allocate_initial_tls(Obj_Entry *objs)
{
 Elf_Addr **tp;






 tls_static_space = tls_last_offset + tls_last_size +
     RTLD_STATIC_TLS_EXTRA;

 tp = (Elf_Addr **)((char *)allocate_tls(objs, ((void*)0), TLS_TCB_SIZE, 16)
     + TLS_TP_OFFSET + TLS_TCB_SIZE);

 __asm __volatile("mv  tp, %0" :: "r"(tp));
}
