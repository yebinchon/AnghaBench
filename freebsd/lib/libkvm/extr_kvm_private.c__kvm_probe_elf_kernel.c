
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* e_ident; scalar_t__ e_type; int e_machine; } ;
struct TYPE_5__ {TYPE_1__ nlehdr; } ;
typedef TYPE_2__ kvm_t ;


 size_t EI_CLASS ;
 int EM_PPC ;
 int EM_PPC64 ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;

int
_kvm_probe_elf_kernel(kvm_t *kd, int class, int machine)
{

 return (kd->nlehdr.e_ident[EI_CLASS] == class &&
     ((machine == EM_PPC || machine == EM_PPC64) ?
      kd->nlehdr.e_type == ET_DYN : kd->nlehdr.e_type == ET_EXEC) &&
     kd->nlehdr.e_machine == machine);
}
