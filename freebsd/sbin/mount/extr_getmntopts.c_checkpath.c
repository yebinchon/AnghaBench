
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTDIR ;
 int S_ISDIR (int ) ;
 int errno ;
 int * realpath (char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

int
checkpath(const char *path, char *resolved)
{
 struct stat sb;

 if (realpath(path, resolved) == ((void*)0) || stat(resolved, &sb) != 0)
  return (1);
 if (!S_ISDIR(sb.st_mode)) {
  errno = ENOTDIR;
  return (1);
 }
 return (0);
}
