
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int EFBIG ;
 int PTOV (scalar_t__ const) ;
 int bcopy (int ,void*,size_t const) ;
 int errno ;
 scalar_t__ const memtop ;

ssize_t
i386_copyout(const vm_offset_t src, void *dest, const size_t len)
{
 if (src + len >= memtop) {
  errno = EFBIG;
  return (-1);
 }

 bcopy(PTOV(src), dest, len);
 return (len);
}
