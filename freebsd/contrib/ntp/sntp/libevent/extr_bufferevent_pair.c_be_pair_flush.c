
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_pair {int partner; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;


 short BEV_EVENT_EOF ;
 int BEV_FINISHED ;
 int BEV_NORMAL ;
 short EV_READ ;
 short EV_WRITE ;
 int be_pair_transfer (struct bufferevent*,struct bufferevent*,int) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int ) ;
 int decref_and_unlock (struct bufferevent*) ;
 struct bufferevent* downcast (int ) ;
 int incref_and_lock (struct bufferevent*) ;
 struct bufferevent_pair* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_pair_flush(struct bufferevent *bev, short iotype,
    enum bufferevent_flush_mode mode)
{
 struct bufferevent_pair *bev_p = upcast(bev);
 struct bufferevent *partner;
 incref_and_lock(bev);
 if (!bev_p->partner)
  return -1;

 partner = downcast(bev_p->partner);

 if (mode == BEV_NORMAL)
  return 0;

 if ((iotype & EV_READ) != 0)
  be_pair_transfer(partner, bev, 1);

 if ((iotype & EV_WRITE) != 0)
  be_pair_transfer(bev, partner, 1);

 if (mode == BEV_FINISHED) {
  bufferevent_run_eventcb_(partner, iotype|BEV_EVENT_EOF, 0);
 }
 decref_and_unlock(bev);
 return 0;
}
