
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int dummy; } ;
struct statfs {int dummy; } ;
typedef int fs ;


 int ENOSYS ;
 int copy_statfs_to_statvfs (struct statvfs*,struct statfs*) ;
 int errno ;
 int fstatfs (int,struct statfs*) ;
 int memset (struct statfs*,int ,int) ;

int fstatvfs(int fd, struct statvfs *buf)
{
 errno = ENOSYS;
 return -1;

}
