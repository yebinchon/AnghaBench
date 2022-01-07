
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_filtered {int dummy; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 int be_filter_read_nolock_ (struct bufferevent*,void*) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;

__attribute__((used)) static void
be_filter_readcb(struct bufferevent *underlying, void *me_)
{
 struct bufferevent_filtered *bevf = me_;
 struct bufferevent *bev = downcast(bevf);

 BEV_LOCK(bev);

 be_filter_read_nolock_(underlying, me_);

 BEV_UNLOCK(bev);
}
