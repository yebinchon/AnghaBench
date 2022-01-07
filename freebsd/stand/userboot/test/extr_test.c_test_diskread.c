
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t ssize_t ;


 int EIO ;
 int* disk_fd ;
 int disk_index ;
 int errno ;
 size_t pread (int,void*,size_t,int ) ;

int
test_diskread(void *arg, int unit, uint64_t offset, void *dst, size_t size,
    size_t *resid_return)
{
 ssize_t n;

 if (unit > disk_index || disk_fd[unit] == -1)
  return (EIO);
 n = pread(disk_fd[unit], dst, size, offset);
 if (n < 0)
  return (errno);
 *resid_return = size - n;
 return (0);
}
