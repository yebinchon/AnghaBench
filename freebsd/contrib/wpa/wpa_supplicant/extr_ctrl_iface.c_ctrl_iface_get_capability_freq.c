
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_modes; TYPE_1__* modes; } ;
struct wpa_supplicant {TYPE_2__ hw; } ;
struct hostapd_channel_data {int flag; int freq; int chan; } ;
struct TYPE_3__ {int mode; int num_channels; struct hostapd_channel_data* channels; } ;


 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_NO_IR ;
 int HOSTAPD_CHAN_RADAR ;




 int os_snprintf (char*,int,char*,...) ;
 scalar_t__ os_snprintf_error (int,int) ;

__attribute__((used)) static int ctrl_iface_get_capability_freq(struct wpa_supplicant *wpa_s,
       char *buf, size_t buflen)
{
 struct hostapd_channel_data *chnl;
 int ret, i, j;
 char *pos, *end, *hmode;

 pos = buf;
 end = pos + buflen;

 for (j = 0; j < wpa_s->hw.num_modes; j++) {
  switch (wpa_s->hw.modes[j].mode) {
  case 129:
   hmode = "B";
   break;
  case 128:
   hmode = "G";
   break;
  case 131:
   hmode = "A";
   break;
  case 130:
   hmode = "AD";
   break;
  default:
   continue;
  }
  ret = os_snprintf(pos, end - pos, "Mode[%s] Channels:\n",
      hmode);
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
  chnl = wpa_s->hw.modes[j].channels;
  for (i = 0; i < wpa_s->hw.modes[j].num_channels; i++) {
   if (chnl[i].flag & HOSTAPD_CHAN_DISABLED)
    continue;
   ret = os_snprintf(pos, end - pos, " %d = %d MHz%s%s\n",
       chnl[i].chan, chnl[i].freq,
       chnl[i].flag & HOSTAPD_CHAN_NO_IR ?
       " (NO_IR)" : "",
       chnl[i].flag & HOSTAPD_CHAN_RADAR ?
       " (DFS)" : "");

   if (os_snprintf_error(end - pos, ret))
    return pos - buf;
   pos += ret;
  }
  ret = os_snprintf(pos, end - pos, "\n");
  if (os_snprintf_error(end - pos, ret))
   return pos - buf;
  pos += ret;
 }

 return pos - buf;
}
