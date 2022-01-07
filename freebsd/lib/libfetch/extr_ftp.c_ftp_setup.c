
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftpio {int dir; scalar_t__ err; scalar_t__ eof; int * dconn; int * cconn; } ;
typedef int conn_t ;
typedef int FILE ;


 int free (struct ftpio*) ;
 int ftp_closefn ;
 int ftp_readfn ;
 int ftp_seekfn ;
 int ftp_writefn ;
 int * funopen (struct ftpio*,int ,int ,int ,int ) ;
 struct ftpio* malloc (int) ;

__attribute__((used)) static FILE *
ftp_setup(conn_t *cconn, conn_t *dconn, int mode)
{
 struct ftpio *io;
 FILE *f;

 if (cconn == ((void*)0) || dconn == ((void*)0))
  return (((void*)0));
 if ((io = malloc(sizeof(*io))) == ((void*)0))
  return (((void*)0));
 io->cconn = cconn;
 io->dconn = dconn;
 io->dir = mode;
 io->eof = io->err = 0;
 f = funopen(io, ftp_readfn, ftp_writefn, ftp_seekfn, ftp_closefn);
 if (f == ((void*)0))
  free(io);
 return (f);
}
