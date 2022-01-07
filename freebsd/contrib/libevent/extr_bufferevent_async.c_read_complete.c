
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_overlapped {int dummy; } ;
struct bufferevent {int input; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_async {int read_in_progress; scalar_t__ ok; TYPE_1__ bev; } ;
typedef int ev_uintptr_t ;
typedef int ev_ssize_t ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 short BEV_EVENT_READING ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_RESET_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 int EV_READ ;
 int bev_async_consider_reading (struct bufferevent_async*) ;
 int bev_async_set_wsa_error (struct bufferevent*,struct event_overlapped*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_decrement_read_buckets_ (TYPE_1__*,int) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int ) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int ,int ) ;
 int evbuffer_commit_read_ (int ,int) ;
 struct bufferevent_async* upcast_read (struct event_overlapped*) ;

__attribute__((used)) static void
read_complete(struct event_overlapped *eo, ev_uintptr_t key,
    ev_ssize_t nbytes, int ok)
{
 struct bufferevent_async *bev_a = upcast_read(eo);
 struct bufferevent *bev = &bev_a->bev.bev;
 short what = BEV_EVENT_READING;
 ev_ssize_t amount_unread;
 BEV_LOCK(bev);
 EVUTIL_ASSERT(bev_a->read_in_progress);

 amount_unread = bev_a->read_in_progress - nbytes;
 evbuffer_commit_read_(bev->input, nbytes);
 bev_a->read_in_progress = 0;
 if (amount_unread)
  bufferevent_decrement_read_buckets_(&bev_a->bev, -amount_unread);

 if (!ok)
  bev_async_set_wsa_error(bev, eo);

 if (bev_a->ok) {
  if (ok && nbytes) {
   BEV_RESET_GENERIC_READ_TIMEOUT(bev);
   bufferevent_trigger_nolock_(bev, EV_READ, 0);
   bev_async_consider_reading(bev_a);
  } else if (!ok) {
   what |= BEV_EVENT_ERROR;
   bev_a->ok = 0;
   bufferevent_run_eventcb_(bev, what, 0);
  } else if (!nbytes) {
   what |= BEV_EVENT_EOF;
   bev_a->ok = 0;
   bufferevent_run_eventcb_(bev, what, 0);
  }
 }

 bufferevent_decref_and_unlock_(bev);
}
