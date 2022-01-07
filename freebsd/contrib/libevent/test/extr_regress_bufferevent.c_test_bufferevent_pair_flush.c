
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;


 int BEV_EVENT_EOF ;
 int BEV_EVENT_READING ;
 int BEV_FINISHED ;
 int EVLOOP_ONCE ;
 int EV_READ ;
 int EV_WRITE ;
 scalar_t__ bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_flush (struct bufferevent*,int ,int ) ;
 int bufferevent_free (struct bufferevent*) ;
 scalar_t__ bufferevent_pair_new (int ,int ,struct bufferevent**) ;
 int bufferevent_setcb (struct bufferevent*,int *,int *,int ,int*) ;
 int event_base_loop (int ,int ) ;
 int pair_flush_eventcb ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_bufferevent_pair_flush(void *arg)
{
 struct basic_test_data *data = arg;
 struct bufferevent *pair[2];
 struct bufferevent *bev1 = ((void*)0);
 struct bufferevent *bev2 = ((void*)0);
 int callback_what = 0;

 tt_assert(0 == bufferevent_pair_new(data->base, 0, pair));
 bev1 = pair[0];
 bev2 = pair[1];
 tt_assert(0 == bufferevent_enable(bev1, EV_WRITE));
 tt_assert(0 == bufferevent_enable(bev2, EV_READ));

 bufferevent_setcb(bev2, ((void*)0), ((void*)0), pair_flush_eventcb, &callback_what);

 bufferevent_flush(bev1, EV_WRITE, BEV_FINISHED);

 event_base_loop(data->base, EVLOOP_ONCE);

 tt_assert(callback_what == (BEV_EVENT_READING | BEV_EVENT_EOF));

end:
 if (bev1)
  bufferevent_free(bev1);
 if (bev2)
  bufferevent_free(bev2);
}
