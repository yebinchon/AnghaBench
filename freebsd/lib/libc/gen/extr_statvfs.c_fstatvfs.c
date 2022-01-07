
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {unsigned long f_namemax; } ;
struct statfs {int dummy; } ;


 int _PC_NAME_MAX ;
 long _fpathconf (int,int ) ;
 int _fstatfs (int,struct statfs*) ;
 int sfs2svfs (struct statfs*,struct statvfs*) ;

int
fstatvfs(int fd, struct statvfs *result)
{
 struct statfs sfs;
 int rv;
 long pcval;

 rv = _fstatfs(fd, &sfs);
 if (rv != 0)
  return (rv);

 rv = sfs2svfs(&sfs, result);
 if (rv != 0)
  return (rv);





 pcval = _fpathconf(fd, _PC_NAME_MAX);
 if (pcval == -1)
  result->f_namemax = ~0UL;
 else
  result->f_namemax = (unsigned long)pcval;
 return (0);
}
