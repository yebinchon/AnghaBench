
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int rmdir (char const*) ;
 int unlink (char const*) ;

int
remove(const char *file)
{
 struct stat sb;

 if (lstat(file, &sb) < 0)
  return (-1);
 if (S_ISDIR(sb.st_mode))
  return (rmdir(file));
 return (unlink(file));
}
