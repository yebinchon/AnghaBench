
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;


 int BEV_ERROR ;
 int BEV_OK ;
 scalar_t__ evbuffer_remove_buffer (struct evbuffer*,struct evbuffer*,int ) ;

__attribute__((used)) static enum bufferevent_filter_result
be_null_filter(struct evbuffer *src, struct evbuffer *dst, ev_ssize_t lim,
        enum bufferevent_flush_mode state, void *ctx)
{
 (void)state;
 if (evbuffer_remove_buffer(src, dst, lim) == 0)
  return BEV_OK;
 else
  return BEV_ERROR;
}
