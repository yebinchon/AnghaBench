
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int * eapol_sm; } ;
struct hostapd_data {int dummy; } ;


 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;

__attribute__((used)) static int ieee802_1x_sta_entry_alive(void *ctx, const u8 *addr)
{
 struct hostapd_data *hapd = ctx;
 struct sta_info *sta;
 sta = ap_get_sta(hapd, addr);
 if (sta == ((void*)0) || sta->eapol_sm == ((void*)0))
  return 0;
 return 1;
}
