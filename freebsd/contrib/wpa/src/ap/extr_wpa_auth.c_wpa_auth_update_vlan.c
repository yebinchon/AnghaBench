
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* update_vlan ) (int ,int const*,int) ;} ;


 int stub1 (int ,int const*,int) ;

__attribute__((used)) static int wpa_auth_update_vlan(struct wpa_authenticator *wpa_auth,
    const u8 *addr, int vlan_id)
{
 if (!wpa_auth->cb->update_vlan)
  return -1;
 return wpa_auth->cb->update_vlan(wpa_auth->cb_ctx, addr, vlan_id);
}
