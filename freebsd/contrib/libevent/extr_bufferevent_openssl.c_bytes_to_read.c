
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event_watermark {scalar_t__ high; } ;
struct evbuffer {int dummy; } ;
struct TYPE_3__ {int enabled; struct event_watermark wm_read; struct evbuffer* input; } ;
struct TYPE_4__ {scalar_t__ read_suspended; TYPE_1__ bev; } ;
struct bufferevent_openssl {TYPE_2__ bev; scalar_t__ write_blocked_on_read; } ;
typedef int ev_ssize_t ;


 int EV_READ ;
 int READ_DEFAULT ;
 int bufferevent_get_read_max_ (TYPE_2__*) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static int
bytes_to_read(struct bufferevent_openssl *bev)
{
 struct evbuffer *input = bev->bev.bev.input;
 struct event_watermark *wm = &bev->bev.bev.wm_read;
 int result = READ_DEFAULT;
 ev_ssize_t limit;



 if (bev->write_blocked_on_read) {
  return 0;
 }

 if (! (bev->bev.bev.enabled & EV_READ)) {
  return 0;
 }

 if (bev->bev.read_suspended) {
  return 0;
 }

 if (wm->high) {
  if (evbuffer_get_length(input) >= wm->high) {
   return 0;
  }

  result = wm->high - evbuffer_get_length(input);
 } else {
  result = READ_DEFAULT;
 }


 limit = bufferevent_get_read_max_(&bev->bev);
 if (result > limit) {
  result = limit;
 }

 return result;
}
