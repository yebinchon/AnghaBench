
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t misalign; size_t off; size_t totallen; scalar_t__ orig_buffer; scalar_t__ buffer; } ;


 int evbuffer_align (struct evbuffer*) ;
 void* realloc (scalar_t__,size_t) ;

int
evbuffer_expand(struct evbuffer *buf, size_t datlen)
{
 size_t need = buf->misalign + buf->off + datlen;


 if (buf->totallen >= need)
  return (0);





 if (buf->misalign >= datlen) {
  evbuffer_align(buf);
 } else {
  void *newbuf;
  size_t length = buf->totallen;

  if (length < 256)
   length = 256;
  while (length < need)
   length <<= 1;

  if (buf->orig_buffer != buf->buffer)
   evbuffer_align(buf);
  if ((newbuf = realloc(buf->buffer, length)) == ((void*)0))
   return (-1);

  buf->orig_buffer = buf->buffer = newbuf;
  buf->totallen = length;
 }

 return (0);
}
