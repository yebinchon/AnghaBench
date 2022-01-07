
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef size_t ssize_t ;


 int CALLBACK (int ,void const*,int ,size_t) ;
 int copyin ;

ssize_t
userboot_copyin(const void *src, vm_offset_t va, size_t len)
{

        CALLBACK(copyin, src, va, len);
 return (len);
}
