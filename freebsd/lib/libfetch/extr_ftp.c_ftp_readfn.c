
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftpio {scalar_t__ dir; scalar_t__ err; int eof; int * dconn; int * cconn; } ;


 scalar_t__ EBADF ;
 scalar_t__ EINTR ;
 scalar_t__ O_WRONLY ;
 scalar_t__ errno ;
 int fetch_read (int *,char*,int) ;

__attribute__((used)) static int
ftp_readfn(void *v, char *buf, int len)
{
 struct ftpio *io;
 int r;

 io = (struct ftpio *)v;
 if (io == ((void*)0)) {
  errno = EBADF;
  return (-1);
 }
 if (io->cconn == ((void*)0) || io->dconn == ((void*)0) || io->dir == O_WRONLY) {
  errno = EBADF;
  return (-1);
 }
 if (io->err) {
  errno = io->err;
  return (-1);
 }
 if (io->eof)
  return (0);
 r = fetch_read(io->dconn, buf, len);
 if (r > 0)
  return (r);
 if (r == 0) {
  io->eof = 1;
  return (0);
 }
 if (errno != EINTR)
  io->err = errno;
 return (-1);
}
