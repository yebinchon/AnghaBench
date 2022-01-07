
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
typedef scalar_t__ ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int emergency (char*,char const*,...) ;
 int errno ;
 int free (void*) ;
 int fstat (int,struct stat*) ;
 void* malloc (size_t) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,void*,size_t) ;
 int strerror (int ) ;

__attribute__((used)) static int
read_file(const char *path, void **bufp, size_t *bufsizep)
{
 struct stat sb;
 size_t bufsize;
 void *buf;
 ssize_t nbytes;
 int error, fd;

 fd = open(path, O_RDONLY);
 if (fd < 0) {
  emergency("%s: %s", path, strerror(errno));
  return (-1);
 }

 error = fstat(fd, &sb);
 if (error != 0) {
  emergency("fstat: %s", strerror(errno));
  close(fd);
  return (error);
 }

 bufsize = sb.st_size;
 buf = malloc(bufsize);
 if (buf == ((void*)0)) {
  emergency("malloc: %s", strerror(errno));
  close(fd);
  return (error);
 }

 nbytes = read(fd, buf, bufsize);
 if (nbytes != (ssize_t)bufsize) {
  emergency("read: %s", strerror(errno));
  close(fd);
  free(buf);
  return (error);
 }

 error = close(fd);
 if (error != 0) {
  emergency("close: %s", strerror(errno));
  free(buf);
  return (error);
 }

 *bufp = buf;
 *bufsizep = bufsize;

 return (0);
}
