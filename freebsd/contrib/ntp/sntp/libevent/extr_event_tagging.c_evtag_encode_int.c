
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint8_t ;
typedef int ev_uint32_t ;


 int encode_int_internal (int *,int ) ;
 int evbuffer_add (struct evbuffer*,int *,int) ;

void
evtag_encode_int(struct evbuffer *evbuf, ev_uint32_t number)
{
 ev_uint8_t data[5];
 int len = encode_int_internal(data, number);
 evbuffer_add(evbuf, data, len);
}
