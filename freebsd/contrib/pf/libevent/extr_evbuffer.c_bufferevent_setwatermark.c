
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t low; size_t high; } ;
struct TYPE_3__ {size_t low; size_t high; } ;
struct bufferevent {int input; TYPE_2__ wm_write; TYPE_1__ wm_read; } ;


 int EVBUFFER_LENGTH (int ) ;
 short EV_READ ;
 short EV_WRITE ;
 int bufferevent_read_pressure_cb (int ,int ,int ,struct bufferevent*) ;

void
bufferevent_setwatermark(struct bufferevent *bufev, short events,
    size_t lowmark, size_t highmark)
{
 if (events & EV_READ) {
  bufev->wm_read.low = lowmark;
  bufev->wm_read.high = highmark;
 }

 if (events & EV_WRITE) {
  bufev->wm_write.low = lowmark;
  bufev->wm_write.high = highmark;
 }


 bufferevent_read_pressure_cb(bufev->input,
     0, EVBUFFER_LENGTH(bufev->input), bufev);
}
