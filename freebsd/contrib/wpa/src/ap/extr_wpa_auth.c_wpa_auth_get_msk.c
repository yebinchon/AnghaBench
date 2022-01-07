
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* get_msk ) (int ,int const*,int *,size_t*) ;} ;


 int stub1 (int ,int const*,int *,size_t*) ;

__attribute__((used)) static inline int wpa_auth_get_msk(struct wpa_authenticator *wpa_auth,
       const u8 *addr, u8 *msk, size_t *len)
{
 if (wpa_auth->cb->get_msk == ((void*)0))
  return -1;
 return wpa_auth->cb->get_msk(wpa_auth->cb_ctx, addr, msk, len);
}
