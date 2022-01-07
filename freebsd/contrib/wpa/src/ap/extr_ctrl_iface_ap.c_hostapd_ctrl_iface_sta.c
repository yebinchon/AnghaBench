
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int * eapol_sm; } ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int *) ;
 int eapol_auth_dump_state (int *,char*,size_t) ;
 scalar_t__ fst_ctrl_iface_mb_info (int *,char*,size_t) ;
 int hostapd_ctrl_iface_sta_mib (struct hostapd_data*,struct sta_info*,char*,size_t) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 int os_snprintf (char*,size_t,char*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 char* os_strchr (char const*,char) ;
 scalar_t__ os_strcmp (char const*,char*) ;

int hostapd_ctrl_iface_sta(struct hostapd_data *hapd, const char *txtaddr,
      char *buf, size_t buflen)
{
 u8 addr[ETH_ALEN];
 int ret;
 const char *pos;
 struct sta_info *sta;

 if (hwaddr_aton(txtaddr, addr)) {
  ret = os_snprintf(buf, buflen, "FAIL\n");
  if (os_snprintf_error(buflen, ret))
   return 0;
  return ret;
 }

 sta = ap_get_sta(hapd, addr);
 if (sta == ((void*)0))
  return -1;

 pos = os_strchr(txtaddr, ' ');
 if (pos) {
  pos++;
  return -1;
 }

 ret = hostapd_ctrl_iface_sta_mib(hapd, sta, buf, buflen);
 ret += fst_ctrl_iface_mb_info(addr, buf + ret, buflen - ret);

 return ret;
}
