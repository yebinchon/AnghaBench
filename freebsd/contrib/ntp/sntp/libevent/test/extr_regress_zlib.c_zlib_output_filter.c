
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct evbuffer_iovec {int iov_len; scalar_t__ iov_base; } ;
struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;
struct TYPE_3__ {int avail_in; int avail_out; scalar_t__ next_out; scalar_t__ next_in; } ;


 int BEV_NEED_MORE ;
 int BEV_OK ;
 int Z_BUF_ERROR ;
 int Z_OK ;
 int Z_STREAM_END ;
 int assert (int) ;
 int deflate (TYPE_1__*,int ) ;
 int evbuffer_commit_space (struct evbuffer*,struct evbuffer_iovec*,int) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_peek (struct evbuffer*,int,int *,struct evbuffer_iovec*,int) ;
 int evbuffer_reserve_space (struct evbuffer*,int,struct evbuffer_iovec*,int) ;
 int getstate (int) ;
 int outfilter_calls ;

__attribute__((used)) static enum bufferevent_filter_result
zlib_output_filter(struct evbuffer *src, struct evbuffer *dst,
    ev_ssize_t lim, enum bufferevent_flush_mode state, void *ctx)
{
 struct evbuffer_iovec v_in[1];
 struct evbuffer_iovec v_out[1];
 int nread, nwrite;
 int res, n;

 z_streamp p = ctx;

 do {

  n = evbuffer_peek(src, -1, ((void*)0), v_in, 1);
  if (n) {
   p->avail_in = v_in[0].iov_len;
   p->next_in = v_in[0].iov_base;
  } else {
   p->avail_in = 0;
   p->next_in = 0;
  }

  evbuffer_reserve_space(dst, 4096, v_out, 1);
  p->next_out = v_out[0].iov_base;
  p->avail_out = v_out[0].iov_len;


  res = deflate(p, getstate(state));


  nread = v_in[0].iov_len - p->avail_in;
  nwrite = v_out[0].iov_len - p->avail_out;

  evbuffer_drain(src, nread);
  v_out[0].iov_len = nwrite;
  evbuffer_commit_space(dst, v_out, 1);

  if (res==Z_BUF_ERROR) {



   if (nwrite == 0)
    return BEV_NEED_MORE;
  } else {
   assert(res == Z_OK || res == Z_STREAM_END);
  }

 } while (evbuffer_get_length(src) > 0);

 ++outfilter_calls;

 return (BEV_OK);
}
