
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wpa_supplicant {TYPE_1__* ifmsh; } ;
struct sta_info {scalar_t__ my_lid; struct sta_info* next; } ;
struct hostapd_data {struct sta_info* sta_list; } ;
struct TYPE_2__ {struct hostapd_data** bss; } ;
typedef int Boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static Boolean llid_in_use(struct wpa_supplicant *wpa_s, u16 llid)
{
 struct sta_info *sta;
 struct hostapd_data *hapd = wpa_s->ifmsh->bss[0];

 for (sta = hapd->sta_list; sta; sta = sta->next) {
  if (sta->my_lid == llid)
   return TRUE;
 }

 return FALSE;
}
