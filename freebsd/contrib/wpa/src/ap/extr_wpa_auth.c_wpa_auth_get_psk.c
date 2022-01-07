
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int const* (* get_psk ) (int ,int const*,int const*,int const*,size_t*,int*) ;} ;


 int const* stub1 (int ,int const*,int const*,int const*,size_t*,int*) ;

__attribute__((used)) static inline const u8 * wpa_auth_get_psk(struct wpa_authenticator *wpa_auth,
       const u8 *addr,
       const u8 *p2p_dev_addr,
       const u8 *prev_psk, size_t *psk_len,
       int *vlan_id)
{
 if (wpa_auth->cb->get_psk == ((void*)0))
  return ((void*)0);
 return wpa_auth->cb->get_psk(wpa_auth->cb_ctx, addr, p2p_dev_addr,
         prev_psk, psk_len, vlan_id);
}
