
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct evbuffer {size_t off; int * buffer; } ;


 int * memchr (int *,int const,size_t) ;
 scalar_t__ memcmp (int *,int const*,size_t) ;

u_char *
evbuffer_find(struct evbuffer *buffer, const u_char *what, size_t len)
{
 size_t remain = buffer->off;
 u_char *search = buffer->buffer;
 u_char *p;

 while ((p = memchr(search, *what, remain)) != ((void*)0)) {
  remain = buffer->off - (size_t)(search - buffer->buffer);
  if (remain < len)
   break;
  if (memcmp(p, what, len) == 0)
   return (p);
  search = p + 1;
 }

 return (((void*)0));
}
