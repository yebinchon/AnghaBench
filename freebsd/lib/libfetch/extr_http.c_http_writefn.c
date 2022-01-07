
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpio {int conn; } ;


 int fetch_write (int ,char const*,int) ;

__attribute__((used)) static int
http_writefn(void *v, const char *buf, int len)
{
 struct httpio *io = (struct httpio *)v;

 return (fetch_write(io->conn, buf, len));
}
