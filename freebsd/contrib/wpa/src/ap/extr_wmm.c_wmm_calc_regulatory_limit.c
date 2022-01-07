
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_wmm_ac_params {int dummy; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_data {int parameter_set_count; TYPE_2__* iface; TYPE_1__* iconf; } ;
struct hostapd_channel_data {scalar_t__ freq; int wmm_rules; scalar_t__ wmm_rules_valid; } ;
struct TYPE_4__ {scalar_t__ freq; struct hostapd_wmm_ac_params* prev_wmm; struct hostapd_hw_modes* current_mode; } ;
struct TYPE_3__ {struct hostapd_wmm_ac_params* wmm_ac_params; } ;


 scalar_t__ os_memcmp (struct hostapd_wmm_ac_params*,struct hostapd_wmm_ac_params*,int) ;
 int os_memcpy (struct hostapd_wmm_ac_params*,struct hostapd_wmm_ac_params*,int) ;
 int wmm_set_regulatory_limit (struct hostapd_wmm_ac_params*,struct hostapd_wmm_ac_params*,int ) ;

__attribute__((used)) static void wmm_calc_regulatory_limit(struct hostapd_data *hapd,
          struct hostapd_wmm_ac_params *acp)
{
 struct hostapd_hw_modes *mode = hapd->iface->current_mode;
 int c;

 os_memcpy(acp, hapd->iconf->wmm_ac_params,
    sizeof(hapd->iconf->wmm_ac_params));

 for (c = 0; mode && c < mode->num_channels; c++) {
  struct hostapd_channel_data *chan = &mode->channels[c];

  if (chan->freq != hapd->iface->freq)
   continue;

  if (chan->wmm_rules_valid)
   wmm_set_regulatory_limit(hapd->iconf->wmm_ac_params,
       acp, chan->wmm_rules);
  break;
 }





 if (os_memcmp(acp, hapd->iface->prev_wmm,
        sizeof(hapd->iconf->wmm_ac_params)) != 0) {
  os_memcpy(hapd->iface->prev_wmm, acp,
     sizeof(hapd->iconf->wmm_ac_params));
  hapd->parameter_set_count++;
 }
}
