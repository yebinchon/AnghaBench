
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_used_freq_data {int freq; } ;
struct wpa_supplicant {int num_multichan_concurrent; } ;


 int MSG_DEBUG ;
 struct wpa_used_freq_data* os_calloc (int ,int) ;
 int os_free (struct wpa_used_freq_data*) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpas_p2p_num_unused_channels (struct wpa_supplicant*) ;
 unsigned int wpas_p2p_valid_oper_freqs (struct wpa_supplicant*,struct wpa_used_freq_data*,int ) ;

__attribute__((used)) static int wpas_check_freq_conflict(struct wpa_supplicant *wpa_s, int freq)
{
 int res;
 unsigned int num, i;
 struct wpa_used_freq_data *freqs;

 if (wpas_p2p_num_unused_channels(wpa_s) > 0) {

  return 0;
 }

 freqs = os_calloc(wpa_s->num_multichan_concurrent,
     sizeof(struct wpa_used_freq_data));
 if (!freqs)
  return 1;

 num = wpas_p2p_valid_oper_freqs(wpa_s, freqs,
     wpa_s->num_multichan_concurrent);

 for (i = 0; i < num; i++) {
  if (freqs[i].freq == freq) {
   wpa_printf(MSG_DEBUG, "P2P: Frequency %d MHz in use by another virtual interface and can be used",
       freq);
   res = 0;
   goto exit_free;
  }
 }

 wpa_printf(MSG_DEBUG, "P2P: No valid operating frequencies");
 res = 1;

exit_free:
 os_free(freqs);
 return res;
}
