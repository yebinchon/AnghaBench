
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_modes; int modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct oper_class_map {int mode; } ;
struct hostapd_hw_modes {int dummy; } ;


 int MSG_DEBUG ;
 int WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL ;
 int* get_ie (int const*,int,int ) ;
 struct hostapd_hw_modes* get_mode (int ,int ,int ) ;
 struct oper_class_map* get_oper_class (char const*,int const) ;
 int int_array_concat (int**,int*) ;
 int os_free (int*) ;
 int wpa_printf (int ,char*,int const) ;
 int* wpas_add_channels (struct oper_class_map const*,struct hostapd_hw_modes*,int,int const*,int) ;

__attribute__((used)) static int * wpas_channel_report_freqs(struct wpa_supplicant *wpa_s, int active,
           const char *country, const u8 *subelems,
           size_t len)
{
 int *freqs = ((void*)0), *new_freqs;
 const u8 *end = subelems + len;

 while (end - subelems > 2) {
  const struct oper_class_map *op;
  const u8 *ap_chan_elem, *pos;
  u8 left;
  struct hostapd_hw_modes *mode;

  ap_chan_elem = get_ie(subelems, end - subelems,
          WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL);
  if (!ap_chan_elem)
   break;
  pos = ap_chan_elem + 2;
  left = ap_chan_elem[1];
  if (left < 1)
   break;
  subelems = ap_chan_elem + 2 + left;

  op = get_oper_class(country, *pos);
  if (!op) {
   wpa_printf(MSG_DEBUG,
       "Beacon request: unknown operating class in AP Channel Report subelement %u",
       *pos);
   goto out;
  }
  pos++;
  left--;

  mode = get_mode(wpa_s->hw.modes, wpa_s->hw.num_modes, op->mode);
  if (!mode)
   continue;
  new_freqs = wpas_add_channels(op, mode, active, pos, left);
  if (new_freqs)
   int_array_concat(&freqs, new_freqs);

  os_free(new_freqs);
 }

 return freqs;
out:
 os_free(freqs);
 return ((void*)0);
}
