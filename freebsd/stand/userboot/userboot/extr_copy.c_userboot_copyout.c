
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef size_t ssize_t ;


 int CALLBACK (int ,int ,void*,size_t) ;
 int copyout ;

ssize_t
userboot_copyout(vm_offset_t va, void *dst, size_t len)
{

 CALLBACK(copyout, va, dst, len);
 return (len);
}
