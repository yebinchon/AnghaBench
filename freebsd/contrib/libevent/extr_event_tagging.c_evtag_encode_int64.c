
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint8_t ;
typedef int ev_uint64_t ;


 int encode_int64_internal (int *,int ) ;
 int evbuffer_add (struct evbuffer*,int *,int) ;

void
evtag_encode_int64(struct evbuffer *evbuf, ev_uint64_t number)
{
 ev_uint8_t data[9];
 int len = encode_int64_internal(data, number);
 evbuffer_add(evbuf, data, len);
}
