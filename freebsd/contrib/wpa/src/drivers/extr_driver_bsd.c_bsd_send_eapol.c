
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bsd_driver_data {int sock_xmit; } ;


 int ETH_P_EAPOL ;
 int MSG_MSGDUMP ;
 int l2_packet_send (int ,int const*,int ,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

__attribute__((used)) static int
bsd_send_eapol(void *priv, const u8 *addr, const u8 *data, size_t data_len,
        int encrypt, const u8 *own_addr, u32 flags)
{
 struct bsd_driver_data *drv = priv;

 wpa_hexdump(MSG_MSGDUMP, "TX EAPOL", data, data_len);

 return l2_packet_send(drv->sock_xmit, addr, ETH_P_EAPOL, data,
         data_len);
}
