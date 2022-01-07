
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* e_ident; } ;
struct TYPE_6__ {TYPE_1__ nlehdr; } ;
typedef TYPE_2__ kvm_t ;


 size_t EI_DATA ;
 int ELFCLASS32 ;
 scalar_t__ ELFDATA2MSB ;
 int EM_PPC ;
 scalar_t__ _kvm_probe_elf_kernel (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
_powerpc_probe(kvm_t *kd)
{

 return (_kvm_probe_elf_kernel(kd, ELFCLASS32, EM_PPC) &&
     kd->nlehdr.e_ident[EI_DATA] == ELFDATA2MSB);
}
