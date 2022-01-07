
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpio {size_t bufsize; char* buf; } ;


 char* realloc (char*,size_t) ;

__attribute__((used)) static inline int
http_growbuf(struct httpio *io, size_t len)
{
 char *tmp;

 if (io->bufsize >= len)
  return (0);

 if ((tmp = realloc(io->buf, len)) == ((void*)0))
  return (-1);
 io->buf = tmp;
 io->bufsize = len;
 return (0);
}
