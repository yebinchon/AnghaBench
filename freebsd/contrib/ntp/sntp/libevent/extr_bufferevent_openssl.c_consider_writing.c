
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event_watermark {scalar_t__ high; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int enabled; int ev_write; struct evbuffer* output; } ;
struct TYPE_4__ {struct bufferevent bev; scalar_t__ write_suspended; } ;
struct bufferevent_openssl {TYPE_2__ bev; TYPE_1__* underlying; scalar_t__ read_blocked_on_write; } ;
struct TYPE_3__ {struct event_watermark wm_write; struct evbuffer* output; } ;


 int EV_READ ;
 int EV_WRITE ;
 int OP_BLOCKED ;
 int OP_ERR ;
 int OP_MADE_PROGRESS ;
 int WRITE_FRAME ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int ,int ) ;
 int do_read (struct bufferevent_openssl*,int) ;
 int do_write (struct bufferevent_openssl*,int) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int event_del (int *) ;

__attribute__((used)) static void
consider_writing(struct bufferevent_openssl *bev_ssl)
{
 int r;
 struct evbuffer *output = bev_ssl->bev.bev.output;
 struct evbuffer *target = ((void*)0);
 struct event_watermark *wm = ((void*)0);

 while (bev_ssl->read_blocked_on_write) {
  r = do_read(bev_ssl, 1024);
  if (r & OP_MADE_PROGRESS) {
   struct bufferevent *bev = &bev_ssl->bev.bev;

   bufferevent_trigger_nolock_(bev, EV_READ, 0);
  }
  if (r & (OP_ERR|OP_BLOCKED))
   break;
 }
 if (bev_ssl->read_blocked_on_write)
  return;
 if (bev_ssl->underlying) {
  target = bev_ssl->underlying->output;
  wm = &bev_ssl->underlying->wm_write;
 }
 while ((bev_ssl->bev.bev.enabled & EV_WRITE) &&
     (! bev_ssl->bev.write_suspended) &&
     evbuffer_get_length(output) &&
     (!target || (! wm->high || evbuffer_get_length(target) < wm->high))) {
  int n_to_write;
  if (wm && wm->high)
   n_to_write = wm->high - evbuffer_get_length(target);
  else
   n_to_write = WRITE_FRAME;
  r = do_write(bev_ssl, n_to_write);
  if (r & (OP_BLOCKED|OP_ERR))
   break;
 }

 if (!bev_ssl->underlying) {
  if (evbuffer_get_length(output) == 0) {
   event_del(&bev_ssl->bev.bev.ev_write);
  } else if (bev_ssl->bev.write_suspended ||
      !(bev_ssl->bev.bev.enabled & EV_WRITE)) {

   event_del(&bev_ssl->bev.bev.ev_write);
  }
 }
}
