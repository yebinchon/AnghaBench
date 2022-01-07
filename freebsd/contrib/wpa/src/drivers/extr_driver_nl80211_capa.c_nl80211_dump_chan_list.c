
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hostapd_hw_modes {int num_channels; int mode; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int flag; int freq; } ;
typedef int str ;


 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_NO_IR ;
 int HOSTAPD_CHAN_RADAR ;
 int MSG_DEBUG ;
 int modestr (int ) ;
 int os_snprintf (char*,int,char*,int ,char*,char*,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_printf (int ,char*,int ,char*) ;

__attribute__((used)) static void nl80211_dump_chan_list(struct hostapd_hw_modes *modes,
       u16 num_modes)
{
 int i;

 if (!modes)
  return;

 for (i = 0; i < num_modes; i++) {
  struct hostapd_hw_modes *mode = &modes[i];
  char str[200];
  char *pos = str;
  char *end = pos + sizeof(str);
  int j, res;

  for (j = 0; j < mode->num_channels; j++) {
   struct hostapd_channel_data *chan = &mode->channels[j];

   res = os_snprintf(pos, end - pos, " %d%s%s%s",
       chan->freq,
       (chan->flag & HOSTAPD_CHAN_DISABLED) ?
       "[DISABLED]" : "",
       (chan->flag & HOSTAPD_CHAN_NO_IR) ?
       "[NO_IR]" : "",
       (chan->flag & HOSTAPD_CHAN_RADAR) ?
       "[RADAR]" : "");
   if (os_snprintf_error(end - pos, res))
    break;
   pos += res;
  }

  *pos = '\0';
  wpa_printf(MSG_DEBUG, "nl80211: Mode IEEE %s:%s",
      modestr(mode->mode), str);
 }
}
