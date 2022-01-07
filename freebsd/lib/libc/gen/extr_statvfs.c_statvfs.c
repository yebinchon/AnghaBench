
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {unsigned long f_namemax; } ;
struct statfs {int dummy; } ;


 int _PC_NAME_MAX ;
 long pathconf (char const*,int ) ;
 int sfs2svfs (struct statfs*,struct statvfs*) ;
 int statfs (char const*,struct statfs*) ;

int
statvfs(const char * __restrict path, struct statvfs * __restrict result)
{
 struct statfs sfs;
 int rv;
 long pcval;

 rv = statfs(path, &sfs);
 if (rv != 0)
  return (rv);

 sfs2svfs(&sfs, result);





 pcval = pathconf(path, _PC_NAME_MAX);
 if (pcval == -1)
  result->f_namemax = ~0UL;
 else
  result->f_namemax = (unsigned long)pcval;
 return (0);
}
