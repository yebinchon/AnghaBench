
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t a_val; TYPE_2__* a_ptr; } ;
struct TYPE_6__ {int a_type; TYPE_1__ a_un; } ;
struct TYPE_5__ {scalar_t__ p_type; scalar_t__ p_vaddr; int p_align; int p_filesz; int p_memsz; } ;
typedef TYPE_2__ Elf_Phdr ;
typedef TYPE_3__ Elf_Auxinfo ;
typedef int Elf_Addr ;


 int AT_NULL ;



 scalar_t__ PT_TLS ;
 int TLS_TCB_ALIGN ;
 int TLS_TCB_SIZE ;
 void* _rtld_allocate_tls (int *,int ,int ) ;
 int _set_tp (void*) ;
 scalar_t__ environ ;
 int roundup2 (int ,int ) ;
 void* tls_init ;
 int tls_init_align ;
 int tls_init_size ;
 int tls_static_space ;

void
_init_tls(void)
{

 Elf_Addr *sp;
 Elf_Auxinfo *aux, *auxp;
 Elf_Phdr *phdr;
 size_t phent, phnum;
 int i;
 void *tls;

 sp = (Elf_Addr *) environ;
 while (*sp++ != 0)
  ;
 aux = (Elf_Auxinfo *) sp;
 phdr = ((void*)0);
 phent = phnum = 0;
 for (auxp = aux; auxp->a_type != AT_NULL; auxp++) {
  switch (auxp->a_type) {
  case 130:
   phdr = auxp->a_un.a_ptr;
   break;

  case 129:
   phent = auxp->a_un.a_val;
   break;

  case 128:
   phnum = auxp->a_un.a_val;
   break;
  }
 }
 if (phdr == ((void*)0) || phent != sizeof(Elf_Phdr) || phnum == 0)
  return;

 for (i = 0; (unsigned) i < phnum; i++) {
  if (phdr[i].p_type == PT_TLS) {
   tls_static_space = roundup2(phdr[i].p_memsz,
       phdr[i].p_align);
   tls_init_size = phdr[i].p_filesz;
   tls_init_align = phdr[i].p_align;
   tls_init = (void*) phdr[i].p_vaddr;
   break;
  }
 }
 tls = _rtld_allocate_tls(((void*)0), TLS_TCB_SIZE, TLS_TCB_ALIGN);

 _set_tp(tls);

}
