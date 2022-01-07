
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int (* new_psk_cb ) (int ,int const*,int const*,int const*,size_t) ;int cb_ctx; } ;


 int stub1 (int ,int const*,int const*,int const*,size_t) ;

int wps_cb_new_psk(struct wps_registrar *reg, const u8 *mac_addr,
     const u8 *p2p_dev_addr, const u8 *psk, size_t psk_len)
{
 if (reg->new_psk_cb == ((void*)0))
  return 0;

 return reg->new_psk_cb(reg->cb_ctx, mac_addr, p2p_dev_addr, psk,
          psk_len);
}
