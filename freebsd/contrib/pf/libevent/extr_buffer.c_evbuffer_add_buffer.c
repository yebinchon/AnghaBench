
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {scalar_t__ off; int buffer; int cbarg; int (* cb ) (struct evbuffer*,size_t,size_t,int ) ;} ;


 int SWAP (struct evbuffer*,struct evbuffer*) ;
 int evbuffer_add (struct evbuffer*,int ,size_t) ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 int stub1 (struct evbuffer*,size_t,size_t,int ) ;
 int stub2 (struct evbuffer*,size_t,size_t,int ) ;

int
evbuffer_add_buffer(struct evbuffer *outbuf, struct evbuffer *inbuf)
{
 int res;


 if (outbuf->off == 0) {
  struct evbuffer tmp;
  size_t oldoff = inbuf->off;


  SWAP(&tmp, outbuf);
  SWAP(outbuf, inbuf);
  SWAP(inbuf, &tmp);






  if (inbuf->off != oldoff && inbuf->cb != ((void*)0))
   (*inbuf->cb)(inbuf, oldoff, inbuf->off, inbuf->cbarg);
  if (oldoff && outbuf->cb != ((void*)0))
   (*outbuf->cb)(outbuf, 0, oldoff, outbuf->cbarg);

  return (0);
 }

 res = evbuffer_add(outbuf, inbuf->buffer, inbuf->off);
 if (res == 0) {

  evbuffer_drain(inbuf, inbuf->off);
 }

 return (res);
}
