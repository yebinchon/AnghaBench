
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int rx_replay_counter; } ;


 int WPA_REPLAY_COUNTER_LEN ;
 int os_memcpy (int ,int const*,int ) ;

void wpa_sm_update_replay_ctr(struct wpa_sm *sm, const u8 *replay_ctr)
{
 os_memcpy(sm->rx_replay_counter, replay_ctr, WPA_REPLAY_COUNTER_LEN);
}
