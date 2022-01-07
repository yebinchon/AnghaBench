
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_used_freq_data {int dummy; } ;
struct wpa_supplicant {unsigned int num_multichan_concurrent; TYPE_1__* global; } ;
struct p2p_channels {int dummy; } ;
typedef enum wpas_p2p_channel_update_trig { ____Placeholder_wpas_p2p_channel_update_trig } wpas_p2p_channel_update_trig ;
typedef int cli_chan ;
typedef int chan ;
struct TYPE_2__ {int * p2p; } ;


 int MSG_ERROR ;
 unsigned int get_shared_radio_freqs_data (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ;
 struct wpa_used_freq_data* os_calloc (unsigned int,int) ;
 int os_free (struct wpa_used_freq_data*) ;
 int os_memset (struct p2p_channels*,int ,int) ;
 int p2p_update_channel_list (int *,struct p2p_channels*,struct p2p_channels*) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_consider_moving_gos (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int,int) ;
 int wpas_p2p_optimize_listen_channel (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ;
 scalar_t__ wpas_p2p_setup_channels (struct wpa_supplicant*,struct p2p_channels*,struct p2p_channels*) ;

void wpas_p2p_update_channel_list(struct wpa_supplicant *wpa_s,
      enum wpas_p2p_channel_update_trig trig)
{
 struct p2p_channels chan, cli_chan;
 struct wpa_used_freq_data *freqs = ((void*)0);
 unsigned int num = wpa_s->num_multichan_concurrent;

 if (wpa_s->global == ((void*)0) || wpa_s->global->p2p == ((void*)0))
  return;

 freqs = os_calloc(num, sizeof(struct wpa_used_freq_data));
 if (!freqs)
  return;

 num = get_shared_radio_freqs_data(wpa_s, freqs, num);

 os_memset(&chan, 0, sizeof(chan));
 os_memset(&cli_chan, 0, sizeof(cli_chan));
 if (wpas_p2p_setup_channels(wpa_s, &chan, &cli_chan)) {
  wpa_printf(MSG_ERROR, "P2P: Failed to update supported "
      "channel list");
  return;
 }

 p2p_update_channel_list(wpa_s->global->p2p, &chan, &cli_chan);

 wpas_p2p_optimize_listen_channel(wpa_s, freqs, num);







 wpas_p2p_consider_moving_gos(wpa_s, freqs, num, trig);

 os_free(freqs);
}
