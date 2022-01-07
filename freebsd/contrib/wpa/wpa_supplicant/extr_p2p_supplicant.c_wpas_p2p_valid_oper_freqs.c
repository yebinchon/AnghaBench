
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_used_freq_data {int freq; } ;
struct wpa_supplicant {TYPE_1__* global; int num_multichan_concurrent; } ;
struct TYPE_2__ {int p2p; } ;


 int dump_freq_data (struct wpa_supplicant*,char*,struct wpa_used_freq_data*,unsigned int) ;
 unsigned int get_shared_radio_freqs_data (struct wpa_supplicant*,struct wpa_used_freq_data*,int ) ;
 struct wpa_used_freq_data* os_calloc (int ,int) ;
 int os_free (struct wpa_used_freq_data*) ;
 int os_memset (struct wpa_used_freq_data*,int ,int) ;
 scalar_t__ p2p_supported_freq (int ,int ) ;

__attribute__((used)) static unsigned int
wpas_p2p_valid_oper_freqs(struct wpa_supplicant *wpa_s,
     struct wpa_used_freq_data *p2p_freqs,
     unsigned int len)
{
 struct wpa_used_freq_data *freqs;
 unsigned int num, i, j;

 freqs = os_calloc(wpa_s->num_multichan_concurrent,
     sizeof(struct wpa_used_freq_data));
 if (!freqs)
  return 0;

 num = get_shared_radio_freqs_data(wpa_s, freqs,
       wpa_s->num_multichan_concurrent);

 os_memset(p2p_freqs, 0, sizeof(struct wpa_used_freq_data) * len);

 for (i = 0, j = 0; i < num && j < len; i++) {
  if (p2p_supported_freq(wpa_s->global->p2p, freqs[i].freq))
   p2p_freqs[j++] = freqs[i];
 }

 os_free(freqs);

 dump_freq_data(wpa_s, "valid for P2P", p2p_freqs, j);

 return j;
}
