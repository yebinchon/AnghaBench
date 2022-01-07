
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;


 int EFBIG ;
 int PTOV (scalar_t__) ;
 int errno ;
 scalar_t__ memtop_copyin ;
 int read (int const,int ,size_t const) ;

ssize_t
i386_readin(const int fd, vm_offset_t dest, const size_t len)
{

 if (dest + len >= memtop_copyin) {
  errno = EFBIG;
  return (-1);
 }

 return (read(fd, PTOV(dest), len));
}
