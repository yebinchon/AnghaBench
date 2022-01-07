
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_modes; int modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct wpa_driver_scan_params {int * freqs; } ;
struct hostapd_hw_modes {int num_channels; TYPE_2__* channels; } ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;
struct TYPE_4__ {int flag; int freq; } ;


 int HOSTAPD_CHAN_DISABLED ;
 struct hostapd_hw_modes* get_mode (int ,int ,int) ;
 int * os_calloc (int,int) ;
 int * os_zalloc (int) ;

__attribute__((used)) static void wpa_setband_scan_freqs_list(struct wpa_supplicant *wpa_s,
     enum hostapd_hw_mode band,
     struct wpa_driver_scan_params *params)
{

 struct hostapd_hw_modes *mode;
 int count, i;

 mode = get_mode(wpa_s->hw.modes, wpa_s->hw.num_modes, band);
 if (mode == ((void*)0)) {

  params->freqs = os_zalloc(sizeof(int));
  return;
 }

 params->freqs = os_calloc(mode->num_channels + 1, sizeof(int));
 if (params->freqs == ((void*)0))
  return;
 for (count = 0, i = 0; i < mode->num_channels; i++) {
  if (mode->channels[i].flag & HOSTAPD_CHAN_DISABLED)
   continue;
  params->freqs[count++] = mode->channels[i].freq;
 }
}
