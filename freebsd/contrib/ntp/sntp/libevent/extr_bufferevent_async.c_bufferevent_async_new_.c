
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_iocp_port {int dummy; } ;
struct event_base {int dummy; } ;
struct bufferevent {void* output; void* input; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_async {int ok; TYPE_1__ bev; int write_overlapped; int read_overlapped; int connect_overlapped; } ;
typedef int evutil_socket_t ;


 int BEV_OPT_THREADSAFE ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int be_async_inbuf_callback ;
 int be_async_outbuf_callback ;
 int bufferevent_free (struct bufferevent*) ;
 scalar_t__ bufferevent_init_common_ (TYPE_1__*,struct event_base*,int *,int) ;
 int bufferevent_init_generic_timeout_cbs_ (struct bufferevent*) ;
 int bufferevent_ops_async ;
 int connect_complete ;
 int evbuffer_add_cb (void*,int ,struct bufferevent*) ;
 int evbuffer_free (void*) ;
 void* evbuffer_overlapped_new_ (int ) ;
 struct event_iocp_port* event_base_get_iocp_ (struct event_base*) ;
 scalar_t__ event_iocp_port_associate_ (struct event_iocp_port*,int ,int) ;
 int event_overlapped_init_ (int *,int ) ;
 struct bufferevent_async* mm_calloc (int,int) ;
 int mm_free (struct bufferevent_async*) ;
 int read_complete ;
 int write_complete ;

struct bufferevent *
bufferevent_async_new_(struct event_base *base,
    evutil_socket_t fd, int options)
{
 struct bufferevent_async *bev_a;
 struct bufferevent *bev;
 struct event_iocp_port *iocp;

 options |= BEV_OPT_THREADSAFE;

 if (!(iocp = event_base_get_iocp_(base)))
  return ((void*)0);

 if (fd >= 0 && event_iocp_port_associate_(iocp, fd, 1)<0) {
  int err = GetLastError();



  if (err != ERROR_INVALID_PARAMETER)
   return ((void*)0);
 }

 if (!(bev_a = mm_calloc(1, sizeof(struct bufferevent_async))))
  return ((void*)0);

 bev = &bev_a->bev.bev;
 if (!(bev->input = evbuffer_overlapped_new_(fd))) {
  mm_free(bev_a);
  return ((void*)0);
 }
 if (!(bev->output = evbuffer_overlapped_new_(fd))) {
  evbuffer_free(bev->input);
  mm_free(bev_a);
  return ((void*)0);
 }

 if (bufferevent_init_common_(&bev_a->bev, base, &bufferevent_ops_async,
  options)<0)
  goto err;

 evbuffer_add_cb(bev->input, be_async_inbuf_callback, bev);
 evbuffer_add_cb(bev->output, be_async_outbuf_callback, bev);

 event_overlapped_init_(&bev_a->connect_overlapped, connect_complete);
 event_overlapped_init_(&bev_a->read_overlapped, read_complete);
 event_overlapped_init_(&bev_a->write_overlapped, write_complete);

 bufferevent_init_generic_timeout_cbs_(bev);

 bev_a->ok = fd >= 0;

 return bev;
err:
 bufferevent_free(&bev_a->bev.bev);
 return ((void*)0);
}
