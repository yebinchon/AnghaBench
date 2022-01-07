
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct hostapd_hw_modes {int num_channels; TYPE_2__* channels; } ;
struct TYPE_4__ {int flag; int freq; } ;


 int HOSTAPD_CHAN_DISABLED ;
 scalar_t__ in_array (int*,int) ;
 int* os_realloc_array (int*,size_t,int) ;

__attribute__((used)) static int * bgscan_learn_get_supp_freqs(struct wpa_supplicant *wpa_s)
{
 struct hostapd_hw_modes *modes;
 int i, j, *freqs = ((void*)0), *n;
 size_t count = 0;

 modes = wpa_s->hw.modes;
 if (modes == ((void*)0))
  return ((void*)0);

 for (i = 0; i < wpa_s->hw.num_modes; i++) {
  for (j = 0; j < modes[i].num_channels; j++) {
   if (modes[i].channels[j].flag & HOSTAPD_CHAN_DISABLED)
    continue;

   if (in_array(freqs, modes[i].channels[j].freq))
    continue;
   n = os_realloc_array(freqs, count + 2, sizeof(int));
   if (n == ((void*)0))
    continue;

   freqs = n;
   freqs[count] = modes[i].channels[j].freq;
   count++;
   freqs[count] = 0;
  }
 }

 return freqs;
}
