
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int EFBIG ;
 int PTOV (scalar_t__) ;
 int bcopy (void const*,int ,size_t const) ;
 int errno ;
 scalar_t__ memtop ;

ssize_t
i386_copyin(const void *src, vm_offset_t dest, const size_t len)
{
 if (dest + len >= memtop) {
  errno = EFBIG;
  return (-1);
 }

 bcopy(src, PTOV(dest), len);
 return (len);
}
