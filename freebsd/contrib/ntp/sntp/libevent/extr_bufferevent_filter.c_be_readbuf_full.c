
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_filtered {int dummy; } ;
struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {TYPE_1__ wm_read; int input; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;


 int BEV_NORMAL ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static int
be_readbuf_full(struct bufferevent_filtered *bevf,
    enum bufferevent_flush_mode state)
{
 struct bufferevent *bufev = downcast(bevf);
 return state == BEV_NORMAL &&
     bufev->wm_read.high &&
     evbuffer_get_length(bufev->input) >= bufev->wm_read.high;
}
