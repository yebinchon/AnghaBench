
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int fchdir (int) ;
 int open (char*,int) ;
 int rename (char const*,char const*) ;

__attribute__((used)) static int
renameat(int fromfd, const char *from, int tofd, const char *to)
{
 int cfd, error, ret;

 if (fromfd != tofd) {
  errno = EINVAL;
  return (-1);
 }

 cfd = open(".", O_RDONLY | O_DIRECTORY);
 if (cfd == -1)
  return (-1);

 if (fchdir(fromfd) == -1) {
  error = errno;
  (void)close(cfd);
  errno = error;
  return (-1);
 }

 ret = rename(from, to);

 error = errno;
 (void)fchdir(cfd);
 (void)close(cfd);
 errno = error;
 return (ret);
}
