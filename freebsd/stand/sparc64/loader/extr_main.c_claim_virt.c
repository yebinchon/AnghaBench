
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int OF_call_method (char*,int ,int,int,int ,size_t,int,int *) ;
 int mmu ;

__attribute__((used)) static vm_offset_t
claim_virt(vm_offset_t virt, size_t size, int align)
{
 vm_offset_t mva;

 if (OF_call_method("claim", mmu, 3, 1, virt, size, align, &mva) == -1)
  return ((vm_offset_t)-1);
 return (mva);
}
