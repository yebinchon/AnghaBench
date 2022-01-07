
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_overlapped {int dummy; } ;
struct bufferevent {int ev_base; int input; } ;
struct TYPE_2__ {struct bufferevent bev; scalar_t__ connecting; } ;
struct bufferevent_async {TYPE_1__ bev; } ;
typedef int evutil_socket_t ;
typedef int ev_uintptr_t ;
typedef int ev_ssize_t ;


 int BEV_EVENT_CONNECTED ;
 int BEV_EVENT_ERROR ;
 int BEV_LOCK (struct bufferevent*) ;
 int EVUTIL_ASSERT (scalar_t__) ;
 int SOL_SOCKET ;
 int SO_UPDATE_CONNECT_CONTEXT ;
 int bev_async_set_wsa_error (struct bufferevent*,struct event_overlapped*) ;
 int bufferevent_async_set_connected_ (struct bufferevent*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,int ,int ) ;
 int evbuffer_overlapped_get_fd_ (int ) ;
 int event_base_del_virtual_ (int ) ;
 int setsockopt (int ,int ,int ,int *,int ) ;
 struct bufferevent_async* upcast_connect (struct event_overlapped*) ;

__attribute__((used)) static void
connect_complete(struct event_overlapped *eo, ev_uintptr_t key,
    ev_ssize_t nbytes, int ok)
{
 struct bufferevent_async *bev_a = upcast_connect(eo);
 struct bufferevent *bev = &bev_a->bev.bev;
 evutil_socket_t sock;

 BEV_LOCK(bev);

 EVUTIL_ASSERT(bev_a->bev.connecting);
 bev_a->bev.connecting = 0;
 sock = evbuffer_overlapped_get_fd_(bev_a->bev.bev.input);

 setsockopt(sock, SOL_SOCKET, SO_UPDATE_CONNECT_CONTEXT, ((void*)0), 0);

 if (ok)
  bufferevent_async_set_connected_(bev);
 else
  bev_async_set_wsa_error(bev, eo);

 bufferevent_run_eventcb_(bev,
   ok? BEV_EVENT_CONNECTED : BEV_EVENT_ERROR, 0);

 event_base_del_virtual_(bev->ev_base);

 bufferevent_decref_and_unlock_(bev);
}
