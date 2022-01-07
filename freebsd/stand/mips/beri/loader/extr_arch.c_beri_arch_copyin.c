
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef size_t ssize_t ;


 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static ssize_t
beri_arch_copyin(const void *src, vm_offset_t va, size_t len)
{

 memcpy((void *)va, src, len);
 return (len);
}
