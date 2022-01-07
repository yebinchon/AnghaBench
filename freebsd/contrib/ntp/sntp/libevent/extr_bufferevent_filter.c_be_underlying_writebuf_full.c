
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_filtered {struct bufferevent* underlying; } ;
struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {TYPE_1__ wm_write; int output; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;


 int BEV_NORMAL ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static int
be_underlying_writebuf_full(struct bufferevent_filtered *bevf,
    enum bufferevent_flush_mode state)
{
 struct bufferevent *u = bevf->underlying;
 return state == BEV_NORMAL &&
     u->wm_write.high &&
     evbuffer_get_length(u->output) >= u->wm_write.high;
}
