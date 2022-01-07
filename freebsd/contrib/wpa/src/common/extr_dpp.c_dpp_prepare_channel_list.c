
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hostapd_hw_modes {int dummy; } ;
struct dpp_authentication {unsigned int num_freq; int * freq; int curr_freq; scalar_t__ freq_idx; TYPE_1__* peer_bi; } ;
typedef int freqs ;
struct TYPE_2__ {scalar_t__ num_freq; } ;


 int DPP_BOOTSTRAP_MAX_FREQ ;
 int MSG_DEBUG ;
 int dpp_channel_intersect (struct dpp_authentication*,struct hostapd_hw_modes*,int ) ;
 int dpp_channel_local_list (struct dpp_authentication*,struct hostapd_hw_modes*,int ) ;
 int freq_to_start (int *,unsigned int,int) ;
 int os_snprintf (char*,int,char*,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int dpp_prepare_channel_list(struct dpp_authentication *auth,
        struct hostapd_hw_modes *own_modes,
        u16 num_modes)
{
 int res;
 char freqs[DPP_BOOTSTRAP_MAX_FREQ * 6 + 10], *pos, *end;
 unsigned int i;

 if (auth->peer_bi->num_freq > 0)
  res = dpp_channel_intersect(auth, own_modes, num_modes);
 else
  res = dpp_channel_local_list(auth, own_modes, num_modes);
 if (res < 0)
  return res;



 freq_to_start(auth->freq, auth->num_freq, 2462);
 freq_to_start(auth->freq, auth->num_freq, 2412);
 freq_to_start(auth->freq, auth->num_freq, 2437);

 auth->freq_idx = 0;
 auth->curr_freq = auth->freq[0];

 pos = freqs;
 end = pos + sizeof(freqs);
 for (i = 0; i < auth->num_freq; i++) {
  res = os_snprintf(pos, end - pos, " %u", auth->freq[i]);
  if (os_snprintf_error(end - pos, res))
   break;
  pos += res;
 }
 *pos = '\0';
 wpa_printf(MSG_DEBUG, "DPP: Possible frequencies for initiating:%s",
     freqs);

 return 0;
}
