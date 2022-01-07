
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int flags; } ;
struct hostapd_data {int dummy; } ;


 int WLAN_STA_MFP ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;

__attribute__((used)) static int pmf_in_use(struct hostapd_data *hapd, const u8 *addr)
{
 struct sta_info *sta;

 sta = ap_get_sta(hapd, addr);
 return sta && (sta->flags & WLAN_STA_MFP);
}
