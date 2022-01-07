
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ low; } ;
struct TYPE_3__ {scalar_t__ low; } ;
struct bufferevent {TYPE_2__ wm_write; int output; TYPE_1__ wm_read; int input; } ;


 int BEV_TRIG_IGNORE_WATERMARKS ;
 short EV_READ ;
 short EV_WRITE ;
 int bufferevent_run_readcb_ (struct bufferevent*,int) ;
 int bufferevent_run_writecb_ (struct bufferevent*,int) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static inline void
bufferevent_trigger_nolock_(struct bufferevent *bufev, short iotype, int options)
{
 if ((iotype & EV_READ) && ((options & BEV_TRIG_IGNORE_WATERMARKS) ||
     evbuffer_get_length(bufev->input) >= bufev->wm_read.low))
  bufferevent_run_readcb_(bufev, options);
 if ((iotype & EV_WRITE) && ((options & BEV_TRIG_IGNORE_WATERMARKS) ||
     evbuffer_get_length(bufev->output) <= bufev->wm_write.low))
  bufferevent_run_writecb_(bufev, options);
}
