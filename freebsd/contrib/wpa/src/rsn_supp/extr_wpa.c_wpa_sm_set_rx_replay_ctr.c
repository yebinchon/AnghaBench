
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int rx_replay_counter_set; int rx_replay_counter; } ;


 int MSG_DEBUG ;
 int WPA_REPLAY_COUNTER_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_printf (int ,char*) ;

void wpa_sm_set_rx_replay_ctr(struct wpa_sm *sm, const u8 *rx_replay_counter)
{
 if (rx_replay_counter == ((void*)0))
  return;

 os_memcpy(sm->rx_replay_counter, rx_replay_counter,
    WPA_REPLAY_COUNTER_LEN);
 sm->rx_replay_counter_set = 1;
 wpa_printf(MSG_DEBUG, "Updated key replay counter");
}
