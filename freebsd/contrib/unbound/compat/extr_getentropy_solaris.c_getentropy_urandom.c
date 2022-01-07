
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_fstype; int st_mode; } ;
typedef int ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int EIO ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int O_NOFOLLOW ;
 int O_RDONLY ;
 int S_ISCHR (int ) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,...) ;
 int fstat (int,struct stat*) ;
 scalar_t__ gotdata (void*,size_t) ;
 int open (char const*,int,int ) ;
 int read (int,char*,size_t) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
getentropy_urandom(void *buf, size_t len, const char *path, int devfscheck)
{
 struct stat st;
 size_t i;
 int fd, flags;
 int save_errno = errno;

start:

 flags = O_RDONLY;






 fd = open(path, flags, 0);
 if (fd == -1) {
  if (errno == EINTR)
   goto start;
  goto nodevrandom;
 }

 fcntl(fd, F_SETFD, fcntl(fd, F_GETFD) | FD_CLOEXEC);



 if (fstat(fd, &st) == -1 || !S_ISCHR(st.st_mode) ||
     (devfscheck && (strcmp(st.st_fstype, "devfs") != 0))) {
  close(fd);
  goto nodevrandom;
 }
 for (i = 0; i < len; ) {
  size_t wanted = len - i;
  ssize_t ret = read(fd, (char*)buf + i, wanted);

  if (ret == -1) {
   if (errno == EAGAIN || errno == EINTR)
    continue;
   close(fd);
   goto nodevrandom;
  }
  i += ret;
 }
 close(fd);
 if (gotdata(buf, len) == 0) {
  errno = save_errno;
  return 0;
 }
nodevrandom:
 errno = EIO;
 return -1;
}
