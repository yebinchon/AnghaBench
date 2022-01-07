
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_info {scalar_t__ n_deleted; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_async {int dummy; } ;
struct bufferevent {int dummy; } ;


 int bev_async_consider_reading (struct bufferevent_async*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 struct bufferevent_async* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_async_inbuf_callback(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo,
    void *arg)
{
 struct bufferevent *bev = arg;
 struct bufferevent_async *bev_async = upcast(bev);




 bufferevent_incref_and_lock_(bev);

 if (cbinfo->n_deleted)
  bev_async_consider_reading(bev_async);

 bufferevent_decref_and_unlock_(bev);
}
