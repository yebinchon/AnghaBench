
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_t ;


 int ELFCLASS64 ;
 int EM_SPARCV9 ;
 int _kvm_probe_elf_kernel (int *,int ,int ) ;

__attribute__((used)) static int
_sparc64_probe(kvm_t *kd)
{

 return (_kvm_probe_elf_kernel(kd, ELFCLASS64, EM_SPARCV9));
}
