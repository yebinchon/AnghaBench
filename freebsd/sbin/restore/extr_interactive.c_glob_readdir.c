
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_fileno; int d_name; scalar_t__ d_namlen; } ;
struct direct {scalar_t__ d_ino; scalar_t__ d_namlen; int d_name; } ;


 scalar_t__ TSTINO (scalar_t__,int ) ;
 scalar_t__ UFS_WINO ;
 scalar_t__ dflag ;
 int dumpmap ;
 int memmove (int ,int ,scalar_t__) ;
 struct direct* rst_readdir (void*) ;
 int vflag ;

struct dirent *
glob_readdir(void *dirp)
{
 struct direct *dp;
 static struct dirent adirent;

 while ((dp = rst_readdir(dirp)) != ((void*)0)) {
  if (!vflag && dp->d_ino == UFS_WINO)
   continue;
  if (dflag || TSTINO(dp->d_ino, dumpmap))
   break;
 }
 if (dp == ((void*)0))
  return (((void*)0));
 adirent.d_fileno = dp->d_ino;
 adirent.d_namlen = dp->d_namlen;
 memmove(adirent.d_name, dp->d_name, dp->d_namlen + 1);
 return (&adirent);
}
