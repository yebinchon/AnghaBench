
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; TYPE_2__* current_mode; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_3__ {int ht_capab; scalar_t__ ieee80211ac; scalar_t__ ieee80211ax; int ieee80211n; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211B ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int HT_CAP_INFO_DSSS_CCK40MHZ ;
 int MSG_DEBUG ;
 int ieee80211ac_supported_vht_capab (struct hostapd_iface*) ;
 int ieee80211ax_supported_he_capab (struct hostapd_iface*) ;
 int ieee80211n_allowed_ht40_channel_pair (struct hostapd_iface*) ;
 int ieee80211n_check_40mhz (struct hostapd_iface*) ;
 int ieee80211n_supported_ht_capab (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

int hostapd_check_ht_capab(struct hostapd_iface *iface)
{
 return 0;
}
