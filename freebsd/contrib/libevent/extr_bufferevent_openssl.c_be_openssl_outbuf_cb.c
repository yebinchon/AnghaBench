
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct evbuffer_cb_info {scalar_t__ orig_size; scalar_t__ n_added; } ;
struct evbuffer {int dummy; } ;
struct TYPE_3__ {int timeout_write; int ev_write; } ;
struct TYPE_4__ {TYPE_1__ bev; } ;
struct bufferevent_openssl {scalar_t__ state; scalar_t__ underlying; TYPE_2__ bev; } ;


 scalar_t__ BUFFEREVENT_SSL_OPEN ;
 int bufferevent_add_event_ (int *,int *) ;
 int consider_writing (struct bufferevent_openssl*) ;

__attribute__((used)) static void
be_openssl_outbuf_cb(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo, void *arg)
{
 struct bufferevent_openssl *bev_ssl = arg;
 int r = 0;


 if (cbinfo->n_added && bev_ssl->state == BUFFEREVENT_SSL_OPEN) {
  if (cbinfo->orig_size == 0)
   r = bufferevent_add_event_(&bev_ssl->bev.bev.ev_write,
       &bev_ssl->bev.bev.timeout_write);

  if (bev_ssl->underlying)
   consider_writing(bev_ssl);
 }

 (void)r;
}
