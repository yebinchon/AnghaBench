
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 int MSG_INFO ;
 int hostapd_send_lci_req (struct hostapd_data*,int *) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_ctrl_iface_req_lci(struct hostapd_data *hapd,
          const char *cmd)
{
 u8 addr[ETH_ALEN];

 if (hwaddr_aton(cmd, addr)) {
  wpa_printf(MSG_INFO, "CTRL: REQ_LCI: Invalid MAC address");
  return -1;
 }

 return hostapd_send_lci_req(hapd, addr);
}
