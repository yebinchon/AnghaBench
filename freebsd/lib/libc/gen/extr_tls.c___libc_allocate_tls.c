
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Addr ;


 size_t MAX (size_t,int ) ;
 int* __je_bootstrap_malloc (int) ;
 int _rtld_free_tls (void*,int,int) ;
 int abort () ;
 char* malloc_aligned (size_t,size_t) ;
 int memcpy (void*,void const*,int) ;
 int memset (void*,int ,int) ;
 size_t roundup2 (int,size_t) ;
 void const* tls_init ;
 int tls_init_align ;
 int tls_init_size ;
 int tls_msg (char*) ;
 int tls_static_space ;

void *
__libc_allocate_tls(void *oldtls, size_t tcbsize, size_t tcbalign)
{
 size_t size;
 char *tls;
 Elf_Addr *dtv;
 Elf_Addr segbase, oldsegbase;

 tcbalign = MAX(tcbalign, tls_init_align);
 size = roundup2(tls_static_space, tcbalign);

 if (tcbsize < 2 * sizeof(Elf_Addr))
  tcbsize = 2 * sizeof(Elf_Addr);
 tls = malloc_aligned(size + tcbsize, tcbalign);
 if (tls == ((void*)0)) {
  tls_msg("__libc_allocate_tls: Out of memory.\n");
  abort();
 }
 memset(tls, 0, size + tcbsize);
 dtv = __je_bootstrap_malloc(3 * sizeof(Elf_Addr));
 if (dtv == ((void*)0)) {
  tls_msg("__libc_allocate_tls: Out of memory.\n");
  abort();
 }

 segbase = (Elf_Addr)(tls + size);
 ((Elf_Addr*)segbase)[0] = segbase;
 ((Elf_Addr*)segbase)[1] = (Elf_Addr) dtv;

 dtv[0] = 1;
 dtv[1] = 1;
 dtv[2] = segbase - tls_static_space;

 if (oldtls) {



  oldsegbase = (Elf_Addr) oldtls;
  memcpy((void *)(segbase - tls_static_space),
      (const void *)(oldsegbase - tls_static_space),
      tls_static_space);





  _rtld_free_tls(oldtls, 2*sizeof(Elf_Addr), sizeof(Elf_Addr));
 } else {
  memcpy((void *)(segbase - tls_static_space),
      tls_init, tls_init_size);
  memset((void *)(segbase - tls_static_space + tls_init_size),
      0, tls_static_space - tls_init_size);
 }

 return (void*) segbase;
}
