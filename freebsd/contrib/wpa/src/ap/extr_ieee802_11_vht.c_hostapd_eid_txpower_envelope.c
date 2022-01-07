
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_iface {scalar_t__ freq; struct hostapd_config* conf; struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_data {TYPE_1__* iconf; struct hostapd_iface* iface; } ;
struct hostapd_config {int vht_oper_chwidth; int secondary_channel; } ;
struct hostapd_channel_data {scalar_t__ freq; int max_tx_power; } ;
struct TYPE_2__ {int local_pwr_constraint; } ;






 scalar_t__ NUM_HOSTAPD_MODES ;
 int WLAN_EID_VHT_TRANSMIT_POWER_ENVELOPE ;
 int hostapd_is_dfs_required (struct hostapd_iface*) ;
 scalar_t__ ieee80211_freq_to_chan (scalar_t__,int*) ;

u8 * hostapd_eid_txpower_envelope(struct hostapd_data *hapd, u8 *eid)
{
 struct hostapd_iface *iface = hapd->iface;
 struct hostapd_config *iconf = iface->conf;
 struct hostapd_hw_modes *mode = iface->current_mode;
 struct hostapd_channel_data *chan;
 int dfs, i;
 u8 channel, tx_pwr_count, local_pwr_constraint;
 int max_tx_power;
 u8 tx_pwr;

 if (!mode)
  return eid;

 if (ieee80211_freq_to_chan(iface->freq, &channel) == NUM_HOSTAPD_MODES)
  return eid;

 for (i = 0; i < mode->num_channels; i++) {
  if (mode->channels[i].freq == iface->freq)
   break;
 }
 if (i == mode->num_channels)
  return eid;

 switch (iface->conf->vht_oper_chwidth) {
 case 128:
  if (iconf->secondary_channel == 0) {

   tx_pwr_count = 0;
  } else {

   tx_pwr_count = 1;
  }
  break;
 case 130:

  tx_pwr_count = 2;
  break;
 case 129:
 case 131:

  tx_pwr_count = 3;
  break;
 default:
  return eid;
 }







 dfs = hostapd_is_dfs_required(hapd->iface);
 if (dfs < 0)
  dfs = 0;







 if (hapd->iconf->local_pwr_constraint == -1)
  local_pwr_constraint = (dfs == 0) ? 0 : 3;
 else
  local_pwr_constraint = hapd->iconf->local_pwr_constraint;
 chan = &mode->channels[i];
 max_tx_power = chan->max_tx_power - local_pwr_constraint;





 max_tx_power *= 2;
 if (max_tx_power > 127) {

  max_tx_power = 127;
 }
 if (max_tx_power < -128)
  max_tx_power = -128;
 if (max_tx_power < 0)
  tx_pwr = 0x80 + max_tx_power + 128;
 else
  tx_pwr = max_tx_power;

 *eid++ = WLAN_EID_VHT_TRANSMIT_POWER_ENVELOPE;
 *eid++ = 2 + tx_pwr_count;





 *eid++ = tx_pwr_count;

 for (i = 0; i <= tx_pwr_count; i++)
  *eid++ = tx_pwr;

 return eid;
}
