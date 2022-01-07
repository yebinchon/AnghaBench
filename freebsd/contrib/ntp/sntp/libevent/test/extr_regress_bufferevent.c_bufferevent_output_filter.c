
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;


 int BEV_OK ;
 int evbuffer_add (struct evbuffer*,...) ;
 int evbuffer_drain (struct evbuffer*,unsigned int) ;
 unsigned int evbuffer_get_length (struct evbuffer*) ;
 unsigned char* evbuffer_pullup (struct evbuffer*,unsigned int) ;

__attribute__((used)) static enum bufferevent_filter_result
bufferevent_output_filter(struct evbuffer *src, struct evbuffer *dst,
    ev_ssize_t lim, enum bufferevent_flush_mode state, void *ctx)
{
 const unsigned char *buffer;
 unsigned i;

 buffer = evbuffer_pullup(src, evbuffer_get_length(src));
 for (i = 0; i < evbuffer_get_length(src); ++i) {
  evbuffer_add(dst, "x", 1);
  evbuffer_add(dst, buffer + i, 1);
 }

 evbuffer_drain(src, evbuffer_get_length(src));
 return (BEV_OK);
}
