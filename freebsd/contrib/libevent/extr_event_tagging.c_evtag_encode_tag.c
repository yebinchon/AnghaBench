
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint8_t ;
typedef int ev_uint32_t ;
typedef int data ;


 int evbuffer_add (struct evbuffer*,int*,int) ;
 int memset (int*,int ,int) ;

int
evtag_encode_tag(struct evbuffer *evbuf, ev_uint32_t tag)
{
 int bytes = 0;
 ev_uint8_t data[5];

 memset(data, 0, sizeof(data));
 do {
  ev_uint8_t lower = tag & 0x7f;
  tag >>= 7;

  if (tag)
   lower |= 0x80;

  data[bytes++] = lower;
 } while (tag);

 if (evbuf != ((void*)0))
  evbuffer_add(evbuf, data, bytes);

 return (bytes);
}
