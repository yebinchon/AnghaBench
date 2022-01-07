
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int evbuffer_add_buffer (struct evbuffer*,struct evbuffer*) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evtag_encode_int (struct evbuffer*,int ) ;
 int evtag_encode_tag (struct evbuffer*,int ) ;

void
evtag_marshal_buffer(struct evbuffer *evbuf, ev_uint32_t tag,
    struct evbuffer *data)
{
 evtag_encode_tag(evbuf, tag);

 evtag_encode_int(evbuf, (ev_uint32_t)evbuffer_get_length(data));
 evbuffer_add_buffer(evbuf, data);
}
