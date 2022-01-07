
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int ENOENT ;
 int PATH_MAX ;
 int errno ;
 int find_kld_path (char*,char*,int) ;
 int open (char*,unsigned int,int ) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
kld_find_and_open_solib (char *solib, unsigned o_flags, char **temp_pathname)
{
 char path[PATH_MAX];
 int fd;

 *temp_pathname = ((void*)0);
 if (!find_kld_path(solib, path, sizeof(path))) {
  errno = ENOENT;
  return (-1);
 }
 fd = open(path, o_flags, 0);
 if (fd >= 0)
  *temp_pathname = xstrdup(path);
 return (fd);
}
