
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {int * bss; TYPE_2__* current_mode; TYPE_1__* conf; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {int channel; } ;


 int HOSTAPD_LEVEL_WARNING ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int hostapd_hw_mode_txt (int ) ;
 int hostapd_logger (int ,int *,int ,int ,char*,...) ;

__attribute__((used)) static void hostapd_notify_bad_chans(struct hostapd_iface *iface)
{
 if (!iface->current_mode) {
  hostapd_logger(iface->bss[0], ((void*)0), HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_WARNING,
          "Hardware does not support configured mode");
  return;
 }
 hostapd_logger(iface->bss[0], ((void*)0),
         HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_WARNING,
         "Configured channel (%d) not found from the "
         "channel list of current mode (%d) %s",
         iface->conf->channel,
         iface->current_mode->mode,
         hostapd_hw_mode_txt(iface->current_mode->mode));
 hostapd_logger(iface->bss[0], ((void*)0), HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_WARNING,
         "Hardware does not support configured channel");
}
