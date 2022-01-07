
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftpio {scalar_t__ dir; scalar_t__ err; int * dconn; int * cconn; } ;


 scalar_t__ EBADF ;
 scalar_t__ EINTR ;
 scalar_t__ O_RDONLY ;
 scalar_t__ errno ;
 int fetch_write (int *,char const*,int) ;

__attribute__((used)) static int
ftp_writefn(void *v, const char *buf, int len)
{
 struct ftpio *io;
 int w;

 io = (struct ftpio *)v;
 if (io == ((void*)0)) {
  errno = EBADF;
  return (-1);
 }
 if (io->cconn == ((void*)0) || io->dconn == ((void*)0) || io->dir == O_RDONLY) {
  errno = EBADF;
  return (-1);
 }
 if (io->err) {
  errno = io->err;
  return (-1);
 }
 w = fetch_write(io->dconn, buf, len);
 if (w >= 0)
  return (w);
 if (errno != EINTR)
  io->err = errno;
 return (-1);
}
