
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_used_freq_data {int flags; int freq; } ;
struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,unsigned int,char const*,...) ;

void dump_freq_data(struct wpa_supplicant *wpa_s, const char *title,
      struct wpa_used_freq_data *freqs_data,
      unsigned int len)
{
 unsigned int i;

 wpa_dbg(wpa_s, MSG_DEBUG, "Shared frequencies (len=%u): %s",
  len, title);
 for (i = 0; i < len; i++) {
  struct wpa_used_freq_data *cur = &freqs_data[i];
  wpa_dbg(wpa_s, MSG_DEBUG, "freq[%u]: %d, flags=0x%X",
   i, cur->freq, cur->flags);
 }
}
