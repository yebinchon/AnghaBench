
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_modes; int modes; } ;
struct wpa_supplicant {TYPE_1__ hw; int current_bss; } ;
struct oper_class_map {int mode; } ;
struct hostapd_hw_modes {int dummy; } ;


 int MSG_DEBUG ;
 int WLAN_EID_COUNTRY ;
 struct hostapd_hw_modes* get_mode (int ,int ,int ) ;
 struct oper_class_map* get_oper_class (char const*,int) ;
 int int_array_concat (int**,int*) ;
 int int_array_sort_unique (int*) ;
 int os_free (int*) ;
 int* wpa_bss_get_ie (int ,int ) ;
 int wpa_printf (int ,char*,int) ;
 int* wpas_add_channels (struct oper_class_map const*,struct hostapd_hw_modes*,int,int*,int) ;
 int* wpas_channel_report_freqs (struct wpa_supplicant*,int,char const*,int const*,size_t) ;
 int* wpas_op_class_freqs (struct oper_class_map const*,struct hostapd_hw_modes*,int) ;

__attribute__((used)) static int * wpas_beacon_request_freqs(struct wpa_supplicant *wpa_s,
           u8 op_class, u8 chan, int active,
           const u8 *subelems, size_t len)
{
 int *freqs = ((void*)0), *ext_freqs = ((void*)0);
 struct hostapd_hw_modes *mode;
 const char *country = ((void*)0);
 const struct oper_class_map *op;
 const u8 *elem;

 if (!wpa_s->current_bss)
  return ((void*)0);
 elem = wpa_bss_get_ie(wpa_s->current_bss, WLAN_EID_COUNTRY);
 if (elem && elem[1] >= 2)
  country = (const char *) (elem + 2);

 op = get_oper_class(country, op_class);
 if (!op) {
  wpa_printf(MSG_DEBUG,
      "Beacon request: invalid operating class %d",
      op_class);
  return ((void*)0);
 }

 mode = get_mode(wpa_s->hw.modes, wpa_s->hw.num_modes, op->mode);
 if (!mode)
  return ((void*)0);

 switch (chan) {
 case 0:
  freqs = wpas_op_class_freqs(op, mode, active);
  if (!freqs)
   return ((void*)0);
  break;
 case 255:

  break;
 default:
  freqs = wpas_add_channels(op, mode, active, &chan, 1);
  if (!freqs)
   return ((void*)0);
  break;
 }

 ext_freqs = wpas_channel_report_freqs(wpa_s, active, country, subelems,
           len);
 if (ext_freqs) {
  int_array_concat(&freqs, ext_freqs);
  os_free(ext_freqs);
  int_array_sort_unique(freqs);
 }

 return freqs;
}
