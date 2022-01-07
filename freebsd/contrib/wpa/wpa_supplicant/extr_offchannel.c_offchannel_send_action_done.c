
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int drv_flags; scalar_t__ action_tx_wait_time_used; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; scalar_t__ action_tx_wait_time; int * pending_action_tx; } ;


 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_OFFCHANNEL_TX ;
 int wpa_drv_cancel_remain_on_channel (struct wpa_supplicant*) ;
 int wpa_drv_send_action_cancel_wait (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*,int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int wpabuf_free (int *) ;

void offchannel_send_action_done(struct wpa_supplicant *wpa_s)
{
 wpa_printf(MSG_DEBUG,
     "Off-channel: Action frame sequence done notification: pending_action_tx=%p drv_offchan_tx=%d action_tx_wait_time=%d off_channel_freq=%d roc_waiting_drv_freq=%d",
     wpa_s->pending_action_tx,
     !!(wpa_s->drv_flags & WPA_DRIVER_FLAGS_OFFCHANNEL_TX),
     wpa_s->action_tx_wait_time, wpa_s->off_channel_freq,
     wpa_s->roc_waiting_drv_freq);
 wpabuf_free(wpa_s->pending_action_tx);
 wpa_s->pending_action_tx = ((void*)0);
 if (wpa_s->drv_flags & WPA_DRIVER_FLAGS_OFFCHANNEL_TX &&
     (wpa_s->action_tx_wait_time || wpa_s->action_tx_wait_time_used))
  wpa_drv_send_action_cancel_wait(wpa_s);
 else if (wpa_s->off_channel_freq || wpa_s->roc_waiting_drv_freq) {
  wpa_drv_cancel_remain_on_channel(wpa_s);
  wpa_s->off_channel_freq = 0;
  wpa_s->roc_waiting_drv_freq = 0;
 }
 wpa_s->action_tx_wait_time_used = 0;
}
