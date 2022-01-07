
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpio {int chunked; int * conn; } ;
typedef int conn_t ;
typedef int FILE ;


 struct httpio* calloc (int,int) ;
 int fetch_syserr () ;
 int free (struct httpio*) ;
 int * funopen (struct httpio*,int ,int ,int *,int ) ;
 int http_closefn ;
 int http_readfn ;
 int http_writefn ;

__attribute__((used)) static FILE *
http_funopen(conn_t *conn, int chunked)
{
 struct httpio *io;
 FILE *f;

 if ((io = calloc(1, sizeof(*io))) == ((void*)0)) {
  fetch_syserr();
  return (((void*)0));
 }
 io->conn = conn;
 io->chunked = chunked;
 f = funopen(io, http_readfn, http_writefn, ((void*)0), http_closefn);
 if (f == ((void*)0)) {
  fetch_syserr();
  free(io);
  return (((void*)0));
 }
 return (f);
}
