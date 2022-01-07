
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int O_CREAT ;
 scalar_t__ cap_rights_limit (int,int *) ;
 int capflags ;
 int capmode ;
 int * caprightsp ;
 int close (int) ;
 int errno ;
 int open (char const*,int,...) ;

__attribute__((used)) static int
open_file(const char *name)
{
 int fd, serrno;

 if ((capflags & O_CREAT) == 0)
  fd = open(name, capflags);
 else
  fd = open(name, capflags, capmode);
 if (fd < 0)
  return (-1);

 if (caprightsp != ((void*)0)) {
  if (cap_rights_limit(fd, caprightsp) < 0 && errno != ENOSYS) {
   serrno = errno;
   close(fd);
   errno = serrno;
   return (-1);
  }
 }

 return (fd);
}
