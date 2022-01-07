
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent_filtered {int (* process_out ) (int ,int ,int,int,int ) ;int outbuf_cb; int context; TYPE_2__* underlying; } ;
struct bufferevent {int enabled; int output; } ;
typedef int ev_ssize_t ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;
struct TYPE_3__ {int high; } ;
struct TYPE_4__ {int output; TYPE_1__ wm_write; } ;


 int BEV_NORMAL ;
 int BEV_OK ;
 int BEV_RESET_GENERIC_WRITE_TIMEOUT (struct bufferevent*) ;
 int EVBUFFER_CB_ENABLED ;
 int EV_WRITE ;
 scalar_t__ be_underlying_writebuf_full (struct bufferevent_filtered*,int) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int,int ) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;
 int evbuffer_cb_set_flags (int ,int ,int ) ;
 int evbuffer_get_length (int ) ;
 int stub1 (int ,int ,int,int,int ) ;

__attribute__((used)) static enum bufferevent_filter_result
be_filter_process_output(struct bufferevent_filtered *bevf,
    enum bufferevent_flush_mode state,
    int *processed_out)
{

 enum bufferevent_filter_result res = BEV_OK;
 struct bufferevent *bufev = downcast(bevf);
 int again = 0;

 if (state == BEV_NORMAL) {





  if (!(bufev->enabled & EV_WRITE) ||
      be_underlying_writebuf_full(bevf, state) ||
      !evbuffer_get_length(bufev->output))
   return BEV_OK;
 }



 evbuffer_cb_set_flags(bufev->output, bevf->outbuf_cb, 0);

 do {
  int processed = 0;
  again = 0;

  do {
   ev_ssize_t limit = -1;
   if (state == BEV_NORMAL &&
       bevf->underlying->wm_write.high)
    limit = bevf->underlying->wm_write.high -
        evbuffer_get_length(bevf->underlying->output);

   res = bevf->process_out(downcast(bevf)->output,
       bevf->underlying->output,
       limit,
       state,
       bevf->context);

   if (res == BEV_OK)
    processed = *processed_out = 1;
  } while (
   res == BEV_OK &&

   (bufev->enabled & EV_WRITE) &&


   evbuffer_get_length(bufev->output) &&

   !be_underlying_writebuf_full(bevf,state));

  if (processed) {

   bufferevent_trigger_nolock_(bufev, EV_WRITE, 0);

   if (res == BEV_OK &&
       (bufev->enabled & EV_WRITE) &&
       evbuffer_get_length(bufev->output) &&
       !be_underlying_writebuf_full(bevf, state)) {
    again = 1;
   }
  }
 } while (again);


 evbuffer_cb_set_flags(bufev->output,bevf->outbuf_cb,
     EVBUFFER_CB_ENABLED);

 if (*processed_out)
  BEV_RESET_GENERIC_WRITE_TIMEOUT(bufev);

 return res;
}
