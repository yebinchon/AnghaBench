
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int eapol_sm; } ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int *) ;
 int eapol_auth_set_conf (int ,char*,char*) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 char* os_strchr (char*,char) ;

__attribute__((used)) static int hostapd_ctrl_iface_eapol_set(struct hostapd_data *hapd, char *cmd)
{
 u8 addr[ETH_ALEN];
 struct sta_info *sta;
 char *pos = cmd, *param;

 if (hwaddr_aton(pos, addr) || pos[17] != ' ')
  return -1;
 pos += 18;
 param = pos;
 pos = os_strchr(pos, ' ');
 if (!pos)
  return -1;
 *pos++ = '\0';

 sta = ap_get_sta(hapd, addr);
 if (!sta || !sta->eapol_sm)
  return -1;

 return eapol_auth_set_conf(sta->eapol_sm, param, pos);
}
