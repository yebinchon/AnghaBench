
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef size_t ssize_t ;


 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static ssize_t
beri_arch_copyout(vm_offset_t va, void *dst, size_t len)
{

 memcpy(dst, (void *)va, len);
 return (len);
}
