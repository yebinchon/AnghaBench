
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct direct {scalar_t__ d_ino; } ;


 int IFDIR ;
 int IFREG ;
 scalar_t__ NODE ;
 scalar_t__ TSTINO (scalar_t__,int ) ;
 scalar_t__ UFS_WINO ;
 int dflag ;
 int dumpmap ;
 scalar_t__ inodetype (scalar_t__) ;
 struct direct* pathsearch (char const*) ;
 int vflag ;

__attribute__((used)) static int
glob_stat(const char *name, struct stat *stp)
{
 struct direct *dp;

 dp = pathsearch(name);
 if (dp == ((void*)0) || (!dflag && TSTINO(dp->d_ino, dumpmap) == 0) ||
     (!vflag && dp->d_ino == UFS_WINO))
  return (-1);
 if (inodetype(dp->d_ino) == NODE)
  stp->st_mode = IFDIR;
 else
  stp->st_mode = IFREG;
 return (0);
}
