
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_data {int tls_index; int tls_offs; int dtv_gen; } ;
typedef int Elf_Addr ;


 int tls_dtv_generation ;
 struct tls_data* xmalloc (int) ;

__attribute__((used)) static Elf_Addr
reloc_tlsdesc_alloc(int tlsindex, Elf_Addr tlsoffs)
{
 struct tls_data *tlsdesc;

 tlsdesc = xmalloc(sizeof(struct tls_data));
 tlsdesc->dtv_gen = tls_dtv_generation;
 tlsdesc->tls_index = tlsindex;
 tlsdesc->tls_offs = tlsoffs;

 return ((Elf_Addr)tlsdesc);
}
