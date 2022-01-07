
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {int a_val; } ;
struct TYPE_4__ {int a_type; TYPE_1__ a_un; } ;
typedef TYPE_2__ Elf_Auxinfo ;




 int AT_NULL ;
 void* cpu_features ;
 void* cpu_features2 ;

__attribute__((used)) static void
init_cpu_features(char **env)
{
 const Elf_Auxinfo *aux;


 while (*env++ != 0)
  ;
 aux = (const Elf_Auxinfo *)env;


 for (; aux->a_type != AT_NULL; aux++) {
  switch (aux->a_type) {
  case 129:
   cpu_features = (uint32_t)aux->a_un.a_val;
   break;
  case 128:
   cpu_features2 = (uint32_t)aux->a_un.a_val;
   break;
  }
 }
}
