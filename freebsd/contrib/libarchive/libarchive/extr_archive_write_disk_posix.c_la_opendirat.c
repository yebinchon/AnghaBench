
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int ENOTSUP ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_EXEC ;
 int O_PATH ;
 int O_RDONLY ;
 int O_SEARCH ;
 int errno ;
 int open (char const*,int const) ;
 int openat (int,char const*,int const) ;

__attribute__((used)) static int
la_opendirat(int fd, const char *path) {
 const int flags = O_CLOEXEC
     | O_RDONLY

     ;


 if (fd != AT_FDCWD) {
  errno = ENOTSUP;
  return (-1);
 } else
  return (open(path, flags));



}
