
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;
struct TYPE_2__ {int (* set_key ) (int ,int,int,int const*,int,int *,size_t) ;} ;


 int stub1 (int ,int,int,int const*,int,int *,size_t) ;

__attribute__((used)) static inline int wpa_auth_set_key(struct wpa_authenticator *wpa_auth,
       int vlan_id,
       enum wpa_alg alg, const u8 *addr, int idx,
       u8 *key, size_t key_len)
{
 if (wpa_auth->cb->set_key == ((void*)0))
  return -1;
 return wpa_auth->cb->set_key(wpa_auth->cb_ctx, vlan_id, alg, addr, idx,
         key, key_len);
}
