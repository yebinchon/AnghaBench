
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int eapol_sm; } ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int *) ;
 int eapol_auth_reauthenticate (int ) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;

__attribute__((used)) static int hostapd_ctrl_iface_eapol_reauth(struct hostapd_data *hapd,
        const char *cmd)
{
 u8 addr[ETH_ALEN];
 struct sta_info *sta;

 if (hwaddr_aton(cmd, addr))
  return -1;

 sta = ap_get_sta(hapd, addr);
 if (!sta || !sta->eapol_sm)
  return -1;

 eapol_auth_reauthenticate(sta->eapol_sm);
 return 0;
}
