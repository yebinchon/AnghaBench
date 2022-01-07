
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int buf ;


 int EAGAIN ;
 int EINVAL ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int openat (int,char const*,int) ;
 int read (int,char*,int) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
pidfile_read(int dirfd, const char *filename, pid_t *pidptr)
{
 char buf[16], *endptr;
 int error, fd, i;

 fd = openat(dirfd, filename, O_RDONLY | O_CLOEXEC);
 if (fd == -1)
  return (errno);

 i = read(fd, buf, sizeof(buf) - 1);
 error = errno;
 close(fd);
 if (i == -1)
  return (error);
 else if (i == 0)
  return (EAGAIN);
 buf[i] = '\0';

 *pidptr = strtol(buf, &endptr, 10);
 if (endptr != &buf[i])
  return (EINVAL);

 return (0);
}
