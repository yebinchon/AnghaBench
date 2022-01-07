
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_used_freq_data {int dummy; } ;
struct wpa_supplicant {unsigned int num_multichan_concurrent; } ;


 int WPAS_P2P_CHANNEL_UPDATE_ANY ;
 unsigned int get_shared_radio_freqs_data (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ;
 struct wpa_used_freq_data* os_calloc (unsigned int,int) ;
 int os_free (struct wpa_used_freq_data*) ;
 int wpas_p2p_consider_moving_gos (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int,int ) ;

__attribute__((used)) static void wpas_p2p_reconsider_moving_go(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct wpa_used_freq_data *freqs = ((void*)0);
 unsigned int num = wpa_s->num_multichan_concurrent;

 freqs = os_calloc(num, sizeof(struct wpa_used_freq_data));
 if (!freqs)
  return;

 num = get_shared_radio_freqs_data(wpa_s, freqs, num);


 wpas_p2p_consider_moving_gos(wpa_s, freqs, num,
         WPAS_P2P_CHANNEL_UPDATE_ANY);

 os_free(freqs);
}
