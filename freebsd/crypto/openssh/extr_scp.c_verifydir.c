
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTDIR ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 int killchild (int ) ;
 int run_err (char*,char*,int ) ;
 int stat (char*,struct stat*) ;
 int strerror (int ) ;

void
verifydir(char *cp)
{
 struct stat stb;

 if (!stat(cp, &stb)) {
  if (S_ISDIR(stb.st_mode))
   return;
  errno = ENOTDIR;
 }
 run_err("%s: %s", cp, strerror(errno));
 killchild(0);
}
