
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int dummy; } ;
struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int assert (int ) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evtag_marshal_buffer (struct evbuffer*,int ,struct evbuffer*) ;
 int kill_marshal (struct evbuffer*,struct kill const*) ;

void
evtag_marshal_kill(struct evbuffer *evbuf, ev_uint32_t tag, const struct kill *msg)
{
  struct evbuffer *buf_ = evbuffer_new();
  assert(buf_ != ((void*)0));
  kill_marshal(buf_, msg);
  evtag_marshal_buffer(evbuf, tag, buf_);
   evbuffer_free(buf_);
}
