
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freebsd11_dirent {int dummy; } ;
struct dirent {int dummy; } ;
typedef int DIR ;


 int __readdir_r (int *,struct dirent*,struct dirent**) ;
 scalar_t__ freebsd11_cvtdirent (struct freebsd11_dirent*,struct dirent*) ;

int
freebsd11_readdir_r(DIR *dirp, struct freebsd11_dirent *entry,
    struct freebsd11_dirent **result)
{
 struct dirent xentry, *xresult;
 int error;

 error = __readdir_r(dirp, &xentry, &xresult);
 if (error != 0)
  return (error);
 if (xresult != ((void*)0)) {
  if (freebsd11_cvtdirent(entry, &xentry))
   *result = entry;
  else
   *result = ((void*)0);
 } else
  *result = ((void*)0);
 return (0);
}
