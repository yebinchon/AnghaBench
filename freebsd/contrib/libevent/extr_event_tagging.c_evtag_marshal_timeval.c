
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct evbuffer {int dummy; } ;
typedef int ev_uint8_t ;
typedef int ev_uint32_t ;


 int encode_int_internal (int *,int ) ;
 int evtag_marshal (struct evbuffer*,int ,int *,int) ;

void
evtag_marshal_timeval(struct evbuffer *evbuf, ev_uint32_t tag, struct timeval *tv)
{
 ev_uint8_t data[10];
 int len = encode_int_internal(data, tv->tv_sec);
 len += encode_int_internal(data + len, tv->tv_usec);
 evtag_marshal(evbuf, tag, data, len);
}
