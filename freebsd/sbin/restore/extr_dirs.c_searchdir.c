
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotab {int t_seekpt; } ;
struct direct {int d_namlen; int d_name; } ;
typedef int ino_t ;


 int dirp ;
 struct inotab* inotablookup (int ) ;
 struct direct* rst_readdir (int ) ;
 int rst_seekdir (int ,int ,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static struct direct *
searchdir(ino_t inum, char *name)
{
 struct direct *dp;
 struct inotab *itp;
 int len;

 itp = inotablookup(inum);
 if (itp == ((void*)0))
  return (((void*)0));
 rst_seekdir(dirp, itp->t_seekpt, itp->t_seekpt);
 len = strlen(name);
 do {
  dp = rst_readdir(dirp);
  if (dp == ((void*)0))
   return (((void*)0));
 } while (dp->d_namlen != len || strncmp(dp->d_name, name, len) != 0);
 return (dp);
}
