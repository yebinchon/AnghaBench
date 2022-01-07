
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int ENOMEM ;
 int errno ;
 int read (int const,void*,size_t const) ;
 scalar_t__ stage_offset ;
 scalar_t__ staging_end ;

ssize_t
efi_readin(const int fd, vm_offset_t dest, const size_t len)
{

 if (dest + stage_offset + len > staging_end) {
  errno = ENOMEM;
  return (-1);
 }
 return (read(fd, (void *)(dest + stage_offset), len));
}
