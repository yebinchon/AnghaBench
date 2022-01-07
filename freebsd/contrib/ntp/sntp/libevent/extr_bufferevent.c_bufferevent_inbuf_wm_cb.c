
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer_cb_info {int dummy; } ;
struct evbuffer {int dummy; } ;
struct TYPE_2__ {size_t high; } ;
struct bufferevent {TYPE_1__ wm_read; } ;


 int bufferevent_wm_suspend_read (struct bufferevent*) ;
 int bufferevent_wm_unsuspend_read (struct bufferevent*) ;
 size_t evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static void
bufferevent_inbuf_wm_cb(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo,
    void *arg)
{
 struct bufferevent *bufev = arg;
 size_t size;

 size = evbuffer_get_length(buf);

 if (size >= bufev->wm_read.high)
  bufferevent_wm_suspend_read(bufev);
 else
  bufferevent_wm_unsuspend_read(bufev);
}
