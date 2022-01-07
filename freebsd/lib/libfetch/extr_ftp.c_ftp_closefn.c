
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ftpio {int dir; TYPE_1__* cconn; TYPE_1__* dconn; } ;
struct TYPE_4__ {int ref; } ;


 int DEBUGF (char*) ;
 int EBADF ;
 int FTP_TRANSFER_COMPLETE ;
 TYPE_1__* cached_connection ;
 int errno ;
 int fetch_close (TYPE_1__*) ;
 int free (struct ftpio*) ;
 int ftp_chkerr (TYPE_1__*) ;

__attribute__((used)) static int
ftp_closefn(void *v)
{
 struct ftpio *io;
 int r;

 io = (struct ftpio *)v;
 if (io == ((void*)0)) {
  errno = EBADF;
  return (-1);
 }
 if (io->dir == -1)
  return (0);
 if (io->cconn == ((void*)0) || io->dconn == ((void*)0)) {
  errno = EBADF;
  return (-1);
 }
 fetch_close(io->dconn);
 io->dir = -1;
 io->dconn = ((void*)0);
 DEBUGF("Waiting for final status\n");
 r = ftp_chkerr(io->cconn);
 if (io->cconn == cached_connection && io->cconn->ref == 1)
  cached_connection = ((void*)0);
 fetch_close(io->cconn);
 free(io);
 return (r == FTP_TRANSFER_COMPLETE) ? 0 : -1;
}
