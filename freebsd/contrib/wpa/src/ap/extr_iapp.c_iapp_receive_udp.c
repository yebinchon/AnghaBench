
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct iapp_hdr {int version; int command; int identifier; int length; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct iapp_data {int hapd; TYPE_1__ own; int udp_sock; } ;
typedef int socklen_t ;
typedef int from ;
typedef int buf ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IAPP ;


 int IAPP_VERSION ;
 int MSG_INFO ;
 int be_to_host16 (int ) ;
 int errno ;
 int hostapd_logger (int ,int *,int ,int ,char*,int,int,...) ;
 int iapp_process_add_notify (struct iapp_data*,struct sockaddr_in*,struct iapp_hdr*,int) ;
 int inet_ntoa (TYPE_2__) ;
 int recvfrom (int ,unsigned char*,int,int ,struct sockaddr*,int*) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static void iapp_receive_udp(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct iapp_data *iapp = eloop_ctx;
 int len, hlen;
 unsigned char buf[128];
 struct sockaddr_in from;
 socklen_t fromlen;
 struct iapp_hdr *hdr;



 fromlen = sizeof(from);
 len = recvfrom(iapp->udp_sock, buf, sizeof(buf), 0,
         (struct sockaddr *) &from, &fromlen);
 if (len < 0) {
  wpa_printf(MSG_INFO, "iapp_receive_udp - recvfrom: %s",
      strerror(errno));
  return;
 }

 if (from.sin_addr.s_addr == iapp->own.s_addr)
  return;

 hostapd_logger(iapp->hapd, ((void*)0), HOSTAPD_MODULE_IAPP,
         HOSTAPD_LEVEL_DEBUG,
         "Received %d byte IAPP frame from %s%s\n",
         len, inet_ntoa(from.sin_addr),
         len < (int) sizeof(*hdr) ? " (too short)" : "");

 if (len < (int) sizeof(*hdr))
  return;

 hdr = (struct iapp_hdr *) buf;
 hlen = be_to_host16(hdr->length);
 hostapd_logger(iapp->hapd, ((void*)0), HOSTAPD_MODULE_IAPP,
         HOSTAPD_LEVEL_DEBUG,
         "RX: version=%d command=%d id=%d len=%d\n",
         hdr->version, hdr->command,
         be_to_host16(hdr->identifier), hlen);
 if (hdr->version != IAPP_VERSION) {
  wpa_printf(MSG_INFO, "Dropping IAPP frame with unknown version %d",
      hdr->version);
  return;
 }
 if (hlen > len) {
  wpa_printf(MSG_INFO, "Underflow IAPP frame (hlen=%d len=%d)",
      hlen, len);
  return;
 }
 if (hlen < len) {
  wpa_printf(MSG_INFO, "Ignoring %d extra bytes from IAPP frame",
      len - hlen);
  len = hlen;
 }

 switch (hdr->command) {
 case 129:
  iapp_process_add_notify(iapp, &from, hdr, len - sizeof(*hdr));
  break;
 case 128:





  break;
 default:
  wpa_printf(MSG_INFO, "Unknown IAPP command %d", hdr->command);
  break;
 }
}
