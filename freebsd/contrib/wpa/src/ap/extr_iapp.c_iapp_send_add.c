
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct iapp_hdr {void* length; void* identifier; int command; int version; } ;
struct TYPE_4__ {int s_addr; } ;
struct iapp_data {int udp_sock; TYPE_2__ multicast; int identifier; } ;
struct iapp_add_notify {void* seq_num; int mac_addr; scalar_t__ reserved; int addr_len; } ;
typedef int addr ;


 int AF_INET ;
 int ETH_ALEN ;
 int IAPP_CMD_ADD_notify ;
 int IAPP_UDP_PORT ;
 int IAPP_VERSION ;
 int MSG_INFO ;
 int errno ;
 void* host_to_be16 (int) ;
 int htons (int ) ;
 int os_memcpy (int ,int *,int ) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ sendto (int ,char*,int,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void iapp_send_add(struct iapp_data *iapp, u8 *mac_addr, u16 seq_num)
{
 char buf[128];
 struct iapp_hdr *hdr;
 struct iapp_add_notify *add;
 struct sockaddr_in addr;




 hdr = (struct iapp_hdr *) buf;
 hdr->version = IAPP_VERSION;
 hdr->command = IAPP_CMD_ADD_notify;
 hdr->identifier = host_to_be16(iapp->identifier++);
 hdr->length = host_to_be16(sizeof(*hdr) + sizeof(*add));

 add = (struct iapp_add_notify *) (hdr + 1);
 add->addr_len = ETH_ALEN;
 add->reserved = 0;
 os_memcpy(add->mac_addr, mac_addr, ETH_ALEN);

 add->seq_num = host_to_be16(seq_num);

 os_memset(&addr, 0, sizeof(addr));
 addr.sin_family = AF_INET;
 addr.sin_addr.s_addr = iapp->multicast.s_addr;
 addr.sin_port = htons(IAPP_UDP_PORT);
 if (sendto(iapp->udp_sock, buf, (char *) (add + 1) - buf, 0,
     (struct sockaddr *) &addr, sizeof(addr)) < 0)
  wpa_printf(MSG_INFO, "sendto[IAPP-ADD]: %s", strerror(errno));
}
