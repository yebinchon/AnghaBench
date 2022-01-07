
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int evbuffer_add (struct evbuffer*,void*,int ) ;
 int evtag_encode_int (struct evbuffer*,int ) ;
 int evtag_encode_tag (struct evbuffer*,int ) ;

void
evtag_marshal(struct evbuffer *evbuf, ev_uint32_t tag,
    const void *data, ev_uint32_t len)
{
 evtag_encode_tag(evbuf, tag);
 evtag_encode_int(evbuf, len);
 evbuffer_add(evbuf, (void *)data, len);
}
