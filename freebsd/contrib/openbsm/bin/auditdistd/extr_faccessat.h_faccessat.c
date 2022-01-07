
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_EACCESS ;
 int EINVAL ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int access (char const*,int) ;
 int close (int) ;
 int errno ;
 int fchdir (int) ;
 int open (char*,int) ;

__attribute__((used)) static int
faccessat(int fd, const char *path, int mode, int flag)
{
 int cfd, error, ret;

 if (flag == AT_EACCESS) {
  errno = EINVAL;
  return (-1);
 }

 cfd = open(".", O_RDONLY | O_DIRECTORY);
 if (cfd == -1)
  return (-1);

 if (fchdir(fd) == -1) {
  error = errno;
  (void)close(cfd);
  errno = error;
  return (-1);
 }

 ret = access(path, mode);

 error = errno;
 (void)fchdir(cfd);
 (void)close(cfd);
 errno = error;
 return (ret);
}
