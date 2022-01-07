
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procdata {unsigned long param2; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct devdata {unsigned long param2; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;


 int AFSCALL_PIOCTL ;
 int EDOM ;
 int EFAULT ;
 int ENOTCONN ;


 int O_RDWR ;
 scalar_t__ VIOCGETTOK ;
 int abort () ;
 int afs_entry_point ;
 unsigned long afs_ioctlnum ;
 int * afs_ioctlpath ;
 int close (int) ;
 int errno ;
 int ioctl (int,unsigned long,struct procdata*) ;
 int open (char const*,int ) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
try_ioctlpath(const char *path, unsigned long ioctlnum, int entrypoint)
{
    int fd, ret, saved_errno;

    fd = open(path, O_RDWR);
    if (fd < 0)
 return 1;
    switch (entrypoint) {
    case 129: {
 struct procdata data = { 0, 0, 0, 0, AFSCALL_PIOCTL };
 data.param2 = (unsigned long)VIOCGETTOK;
 ret = ioctl(fd, ioctlnum, &data);
 break;
    }
    case 128: {
 struct devdata data = { AFSCALL_PIOCTL, 0, 0, 0, 0, 0, 0, 0 };
 data.param2 = (unsigned long)VIOCGETTOK;
 ret = ioctl(fd, ioctlnum, &data);
 break;
    }
    default:
 abort();
    }
    saved_errno = errno;
    close(fd);




    if (ret &&
 (saved_errno != EFAULT &&
  saved_errno != EDOM &&
  saved_errno != ENOTCONN))
 return 1;
    afs_ioctlnum = ioctlnum;
    afs_ioctlpath = strdup(path);
    if (afs_ioctlpath == ((void*)0))
 return 1;
    afs_entry_point = entrypoint;
    return 0;
}
