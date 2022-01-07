
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int ENAMETOOLONG ;
 int ENOENT ;
 int PATH_MAX ;
 int SEM_PREFIX ;
 int errno ;
 int strcpy (char*,int ) ;
 int strlcat (char*,char const*,int) ;
 int unlink (char*) ;

int
_sem_unlink(const char *name)
{
 char path[PATH_MAX];

 if (name[0] != '/') {
  errno = ENOENT;
  return -1;
 }
 name++;
 strcpy(path, SEM_PREFIX);
 if (strlcat(path, name, sizeof(path)) >= sizeof(path)) {
  errno = ENAMETOOLONG;
  return (-1);
 }

 return (unlink(path));
}
