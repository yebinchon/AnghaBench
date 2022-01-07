
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int next; } ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int *) ;
 int hostapd_ctrl_iface_sta_mib (struct hostapd_data*,int ,char*,size_t) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 int os_snprintf (char*,size_t,char*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;

int hostapd_ctrl_iface_sta_next(struct hostapd_data *hapd, const char *txtaddr,
    char *buf, size_t buflen)
{
 u8 addr[ETH_ALEN];
 struct sta_info *sta;
 int ret;

 if (hwaddr_aton(txtaddr, addr) ||
     (sta = ap_get_sta(hapd, addr)) == ((void*)0)) {
  ret = os_snprintf(buf, buflen, "FAIL\n");
  if (os_snprintf_error(buflen, ret))
   return 0;
  return ret;
 }

 if (!sta->next)
  return 0;

 return hostapd_ctrl_iface_sta_mib(hapd, sta->next, buf, buflen);
}
