
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int read (int const,void*,size_t const) ;

ssize_t
uboot_readin(const int fd, vm_offset_t dest, const size_t len)
{
 return (read(fd, (void *)dest, len));
}
