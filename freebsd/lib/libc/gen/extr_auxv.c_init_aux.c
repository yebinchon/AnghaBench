
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u_long ;
struct TYPE_4__ {scalar_t__ a_ptr; int a_val; } ;
struct TYPE_5__ {int a_type; TYPE_1__ a_un; } ;
typedef TYPE_2__ Elf_Auxinfo ;
 int AT_NULL ;





 TYPE_2__* __elf_aux_vector ;
 char* canary ;
 int canary_len ;
 char* execpath ;
 void* hwcap ;
 void* hwcap2 ;
 int hwcap2_present ;
 int hwcap_present ;
 int ncpus ;
 int osreldate ;
 int pagesize ;
 char* pagesizes ;
 int pagesizes_len ;
 scalar_t__ timekeep ;

__attribute__((used)) static void
init_aux(void)
{
 Elf_Auxinfo *aux;

 for (aux = __elf_aux_vector; aux->a_type != AT_NULL; aux++) {
  switch (aux->a_type) {
  case 138:
   canary = (char *)(aux->a_un.a_ptr);
   break;

  case 137:
   canary_len = aux->a_un.a_val;
   break;

  case 136:
   execpath = (char *)(aux->a_un.a_ptr);
   break;

  case 135:
   hwcap_present = 1;
   hwcap = (u_long)(aux->a_un.a_val);
   break;

  case 134:
   hwcap2_present = 1;
   hwcap2 = (u_long)(aux->a_un.a_val);
   break;

  case 131:
   pagesizes = (char *)(aux->a_un.a_ptr);
   break;

  case 130:
   pagesizes_len = aux->a_un.a_val;
   break;

  case 129:
   pagesize = aux->a_un.a_val;
   break;

  case 132:
   osreldate = aux->a_un.a_val;
   break;

  case 133:
   ncpus = aux->a_un.a_val;
   break;

  case 128:
   timekeep = aux->a_un.a_ptr;
   break;
  }
 }
}
