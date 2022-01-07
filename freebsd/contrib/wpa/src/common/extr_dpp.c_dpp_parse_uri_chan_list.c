
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_bootstrap_info {scalar_t__ num_freq; int* freq; } ;


 scalar_t__ DPP_BOOTSTRAP_MAX_FREQ ;
 int MSG_DEBUG ;
 int atoi (char const*) ;
 int ieee80211_chan_to_freq (int *,int,int) ;
 int wpa_printf (int ,char*,...) ;

int dpp_parse_uri_chan_list(struct dpp_bootstrap_info *bi,
       const char *chan_list)
{
 const char *pos = chan_list, *pos2;
 int opclass = -1, channel, freq;

 while (pos && *pos && *pos != ';') {
  pos2 = pos;
  while (*pos2 >= '0' && *pos2 <= '9')
   pos2++;
  if (*pos2 == '/') {
   opclass = atoi(pos);
   pos = pos2 + 1;
  }
  if (opclass <= 0)
   goto fail;
  channel = atoi(pos);
  if (channel <= 0)
   goto fail;
  while (*pos >= '0' && *pos <= '9')
   pos++;
  freq = ieee80211_chan_to_freq(((void*)0), opclass, channel);
  wpa_printf(MSG_DEBUG,
      "DPP: URI channel-list: opclass=%d channel=%d ==> freq=%d",
      opclass, channel, freq);
  if (freq < 0) {
   wpa_printf(MSG_DEBUG,
       "DPP: Ignore unknown URI channel-list channel (opclass=%d channel=%d)",
       opclass, channel);
  } else if (bi->num_freq == DPP_BOOTSTRAP_MAX_FREQ) {
   wpa_printf(MSG_DEBUG,
       "DPP: Too many channels in URI channel-list - ignore list");
   bi->num_freq = 0;
   break;
  } else {
   bi->freq[bi->num_freq++] = freq;
  }

  if (*pos == ';' || *pos == '\0')
   break;
  if (*pos != ',')
   goto fail;
  pos++;
 }

 return 0;
fail:
 wpa_printf(MSG_DEBUG, "DPP: Invalid URI channel-list");
 return -1;
}
