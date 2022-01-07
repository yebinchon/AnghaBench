
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* val; } ;
struct statfs {TYPE_1__ f_fsid; } ;
struct stat {int dummy; } ;


 int isdir (char const*,struct stat*) ;
 scalar_t__ statfs (char const*,struct statfs*) ;

__attribute__((used)) static int
issamefs(const char *path, struct statfs *stfsp)
{
 struct statfs stfsbuf;
 struct stat stbuf;

 if (isdir(path, &stbuf) != 1)
  return (-1);
 if (statfs(path, &stfsbuf) < 0)
  return (-1);
 if ((stfsbuf.f_fsid.val[0] != stfsp->f_fsid.val[0]) ||
     (stfsbuf.f_fsid.val[1] != stfsp->f_fsid.val[1]))
  return (0);
 return (1);
}
