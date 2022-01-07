
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iapp_layer2_update {int ssap; int control; int* xid_info; scalar_t__ dsap; int len; int sa; int da; } ;
struct iapp_data {int packet_sock; } ;
typedef int msg ;


 int ETH_ALEN ;
 int MSG_INFO ;
 int errno ;
 int host_to_be16 (int) ;
 int os_memcpy (int ,int *,int ) ;
 int os_memset (int ,int,int ) ;
 scalar_t__ send (int ,struct iapp_layer2_update*,int,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void iapp_send_layer2_update(struct iapp_data *iapp, u8 *addr)
{
 struct iapp_layer2_update msg;







 os_memset(msg.da, 0xff, ETH_ALEN);
 os_memcpy(msg.sa, addr, ETH_ALEN);
 msg.len = host_to_be16(6);
 msg.dsap = 0;
 msg.ssap = 0x01;
 msg.control = 0xaf;

 msg.xid_info[0] = 0x81;
 msg.xid_info[1] = 1;
 msg.xid_info[2] = 1 << 1;


 if (send(iapp->packet_sock, &msg, sizeof(msg), 0) < 0)
  wpa_printf(MSG_INFO, "send[L2 Update]: %s", strerror(errno));
}
