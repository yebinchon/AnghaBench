
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int flags; } ;
struct hostapd_data {int own_addr; int msg_ctx; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WLAN_STA_WMM ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int *) ;
 int hostapd_drv_poll_client (struct hostapd_data*,int ,int *,int) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 int wpa_dbg (int ,int ,char*,char const*) ;

int hostapd_ctrl_iface_poll_sta(struct hostapd_data *hapd,
    const char *txtaddr)
{
 u8 addr[ETH_ALEN];
 struct sta_info *sta;

 wpa_dbg(hapd->msg_ctx, MSG_DEBUG, "CTRL_IFACE POLL_STA %s", txtaddr);

 if (hwaddr_aton(txtaddr, addr))
  return -1;

 sta = ap_get_sta(hapd, addr);
 if (!sta)
  return -1;

 hostapd_drv_poll_client(hapd, hapd->own_addr, addr,
    sta->flags & WLAN_STA_WMM);
 return 0;
}
