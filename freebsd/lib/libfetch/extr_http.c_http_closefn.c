
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpio {struct httpio* buf; int conn; } ;


 int fetch_close (int ) ;
 int free (struct httpio*) ;

__attribute__((used)) static int
http_closefn(void *v)
{
 struct httpio *io = (struct httpio *)v;
 int r;

 r = fetch_close(io->conn);
 if (io->buf)
  free(io->buf);
 free(io);
 return (r);
}
