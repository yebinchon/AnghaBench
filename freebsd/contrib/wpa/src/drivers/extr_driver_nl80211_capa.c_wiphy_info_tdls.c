
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_capa {int flags; } ;
struct nlattr {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_TDLS_EXTERNAL_SETUP ;
 int WPA_DRIVER_FLAGS_TDLS_SUPPORT ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wiphy_info_tdls(struct wpa_driver_capa *capa, struct nlattr *tdls,
       struct nlattr *ext_setup)
{
 if (tdls == ((void*)0))
  return;

 wpa_printf(MSG_DEBUG, "nl80211: TDLS supported");
 capa->flags |= WPA_DRIVER_FLAGS_TDLS_SUPPORT;

 if (ext_setup) {
  wpa_printf(MSG_DEBUG, "nl80211: TDLS external setup");
  capa->flags |= WPA_DRIVER_FLAGS_TDLS_EXTERNAL_SETUP;
 }
}
