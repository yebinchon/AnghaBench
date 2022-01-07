
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct iapp_hdr {int dummy; } ;
struct iapp_data {int hapd; } ;
struct iapp_add_notify {int mac_addr; int seq_num; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IAPP ;
 int MSG_INFO ;
 struct sta_info* ap_get_sta (int ,int ) ;
 int ap_sta_disconnect (int ,struct sta_info*,int *,int ) ;
 int be_to_host16 (int ) ;
 int hostapd_logger (int ,int ,int ,int ,char*,...) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int wpa_printf (int ,char*,int,unsigned long) ;

__attribute__((used)) static void iapp_process_add_notify(struct iapp_data *iapp,
        struct sockaddr_in *from,
        struct iapp_hdr *hdr, int len)
{
 struct iapp_add_notify *add = (struct iapp_add_notify *) (hdr + 1);
 struct sta_info *sta;

 if (len != sizeof(*add)) {
  wpa_printf(MSG_INFO, "Invalid IAPP-ADD packet length %d (expected %lu)",
      len, (unsigned long) sizeof(*add));
  return;
 }

 sta = ap_get_sta(iapp->hapd, add->mac_addr);


 hostapd_logger(iapp->hapd, add->mac_addr, HOSTAPD_MODULE_IAPP,
         HOSTAPD_LEVEL_INFO,
         "Received IAPP ADD-notify (seq# %d) from %s:%d%s",
         be_to_host16(add->seq_num),
         inet_ntoa(from->sin_addr), ntohs(from->sin_port),
         sta ? "" : " (STA not found)");

 if (!sta)
  return;





 hostapd_logger(iapp->hapd, add->mac_addr, HOSTAPD_MODULE_IAPP,
         HOSTAPD_LEVEL_DEBUG,
         "Removing STA due to IAPP ADD-notify");
 ap_sta_disconnect(iapp->hapd, sta, ((void*)0), 0);
}
