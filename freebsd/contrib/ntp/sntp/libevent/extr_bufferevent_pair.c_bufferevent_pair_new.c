
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct bufferevent_pair {struct bufferevent_pair* partner; TYPE_1__ bev; } ;
struct bufferevent {int output; int input; } ;


 int BEV_OPT_DEFER_CALLBACKS ;
 int BEV_OPT_THREADSAFE ;
 int bufferevent_enable_locking_ (struct bufferevent*,int ) ;
 int bufferevent_free (struct bufferevent*) ;
 struct bufferevent_pair* bufferevent_pair_elt_new (struct event_base*,int) ;
 struct bufferevent* downcast (struct bufferevent_pair*) ;
 int evbuffer_freeze (int ,int) ;

int
bufferevent_pair_new(struct event_base *base, int options,
    struct bufferevent *pair[2])
{
 struct bufferevent_pair *bufev1 = ((void*)0), *bufev2 = ((void*)0);
 int tmp_options;

 options |= BEV_OPT_DEFER_CALLBACKS;
 tmp_options = options & ~BEV_OPT_THREADSAFE;

 bufev1 = bufferevent_pair_elt_new(base, options);
 if (!bufev1)
  return -1;
 bufev2 = bufferevent_pair_elt_new(base, tmp_options);
 if (!bufev2) {
  bufferevent_free(downcast(bufev1));
  return -1;
 }

 if (options & BEV_OPT_THREADSAFE) {

  bufferevent_enable_locking_(downcast(bufev2), bufev1->bev.lock);
 }

 bufev1->partner = bufev2;
 bufev2->partner = bufev1;

 evbuffer_freeze(downcast(bufev1)->input, 0);
 evbuffer_freeze(downcast(bufev1)->output, 1);
 evbuffer_freeze(downcast(bufev2)->input, 0);
 evbuffer_freeze(downcast(bufev2)->output, 1);

 pair[0] = downcast(bufev1);
 pair[1] = downcast(bufev2);

 return 0;
}
