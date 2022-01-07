
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int * output; int * input; int enabled; struct bufferevent_ops const* be_ops; int timeout_write; int timeout_read; struct event_base* ev_base; } ;
struct bufferevent_private {int refcnt; int options; int deferred; struct bufferevent bev; } ;
struct bufferevent_ops {int dummy; } ;
typedef enum bufferevent_options { ____Placeholder_bufferevent_options } bufferevent_options ;


 int BEV_OPT_DEFER_CALLBACKS ;
 int BEV_OPT_THREADSAFE ;
 int BEV_OPT_UNLOCK_CALLBACKS ;
 int EV_WRITE ;
 scalar_t__ bufferevent_enable_locking_ (struct bufferevent*,int *) ;
 int bufferevent_ratelim_init_ (struct bufferevent_private*) ;
 int bufferevent_run_deferred_callbacks_locked ;
 int bufferevent_run_deferred_callbacks_unlocked ;
 int evbuffer_free (int *) ;
 void* evbuffer_new () ;
 int evbuffer_set_parent_ (int *,struct bufferevent*) ;
 int event_base_get_npriorities (struct event_base*) ;
 int event_deferred_cb_init_ (int *,int,int ,struct bufferevent_private*) ;
 int event_warnx (char*) ;
 int evutil_timerclear (int *) ;

int
bufferevent_init_common_(struct bufferevent_private *bufev_private,
    struct event_base *base,
    const struct bufferevent_ops *ops,
    enum bufferevent_options options)
{
 struct bufferevent *bufev = &bufev_private->bev;

 if (!bufev->input) {
  if ((bufev->input = evbuffer_new()) == ((void*)0))
   return -1;
 }

 if (!bufev->output) {
  if ((bufev->output = evbuffer_new()) == ((void*)0)) {
   evbuffer_free(bufev->input);
   return -1;
  }
 }

 bufev_private->refcnt = 1;
 bufev->ev_base = base;


 evutil_timerclear(&bufev->timeout_read);
 evutil_timerclear(&bufev->timeout_write);

 bufev->be_ops = ops;

 bufferevent_ratelim_init_(bufev_private);






 bufev->enabled = EV_WRITE;


 if (options & BEV_OPT_THREADSAFE) {
  if (bufferevent_enable_locking_(bufev, ((void*)0)) < 0) {

   evbuffer_free(bufev->input);
   evbuffer_free(bufev->output);
   bufev->input = ((void*)0);
   bufev->output = ((void*)0);
   return -1;
  }
 }

 if ((options & (BEV_OPT_DEFER_CALLBACKS|BEV_OPT_UNLOCK_CALLBACKS))
     == BEV_OPT_UNLOCK_CALLBACKS) {
  event_warnx("UNLOCK_CALLBACKS requires DEFER_CALLBACKS");
  return -1;
 }
 if (options & BEV_OPT_UNLOCK_CALLBACKS)
  event_deferred_cb_init_(
      &bufev_private->deferred,
      event_base_get_npriorities(base) / 2,
      bufferevent_run_deferred_callbacks_unlocked,
      bufev_private);
 else
  event_deferred_cb_init_(
      &bufev_private->deferred,
      event_base_get_npriorities(base) / 2,
      bufferevent_run_deferred_callbacks_locked,
      bufev_private);

 bufev_private->options = options;

 evbuffer_set_parent_(bufev->input, bufev);
 evbuffer_set_parent_(bufev->output, bufev);

 return 0;
}
