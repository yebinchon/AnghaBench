
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct evbuffer {size_t off; int totallen; int cbarg; int (* cb ) (struct evbuffer*,size_t,size_t,int ) ;int * buffer; } ;
typedef int HANDLE ;
typedef int DWORD ;


 int EVBUFFER_MAX_READ ;
 int FIONREAD ;
 int ReadFile (int ,int *,int,int*,int *) ;
 int evbuffer_expand (struct evbuffer*,int) ;
 int ioctl (int,int ,int*) ;
 int read (int,int *,int) ;
 int stub1 (struct evbuffer*,size_t,size_t,int ) ;

int
evbuffer_read(struct evbuffer *buf, int fd, int howmuch)
{
 u_char *p;
 size_t oldoff = buf->off;
 int n = EVBUFFER_MAX_READ;
 if (howmuch < 0 || howmuch > n)
  howmuch = n;


 if (evbuffer_expand(buf, howmuch) == -1)
  return (-1);


 p = buf->buffer + buf->off;


 n = read(fd, p, howmuch);
 if (n == -1)
  return (-1);
 if (n == 0)
  return (0);
 buf->off += n;


 if (buf->off != oldoff && buf->cb != ((void*)0))
  (*buf->cb)(buf, oldoff, buf->off, buf->cbarg);

 return (n);
}
