
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int ENOMEM ;
 int bcopy (void*,void*,size_t const) ;
 int errno ;
 scalar_t__ const stage_offset ;
 scalar_t__ const staging_end ;

ssize_t
efi_copyout(const vm_offset_t src, void *dest, const size_t len)
{


 if (src + stage_offset + len > staging_end) {
  errno = ENOMEM;
  return (-1);
 }
 bcopy((void *)(src + stage_offset), dest, len);
 return (len);
}
