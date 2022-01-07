
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_t ;


 int ELFCLASS32 ;
 int EM_386 ;
 scalar_t__ _kvm_is_minidump (int *) ;
 scalar_t__ _kvm_probe_elf_kernel (int *,int ,int ) ;

__attribute__((used)) static int
_i386_minidump_probe(kvm_t *kd)
{

 return (_kvm_probe_elf_kernel(kd, ELFCLASS32, EM_386) &&
     _kvm_is_minidump(kd));
}
