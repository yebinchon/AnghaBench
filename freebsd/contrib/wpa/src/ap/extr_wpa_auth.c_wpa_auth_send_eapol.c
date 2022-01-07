
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* send_eapol ) (int ,int const*,int const*,size_t,int) ;} ;


 int stub1 (int ,int const*,int const*,size_t,int) ;

__attribute__((used)) static inline int
wpa_auth_send_eapol(struct wpa_authenticator *wpa_auth, const u8 *addr,
      const u8 *data, size_t data_len, int encrypt)
{
 if (wpa_auth->cb->send_eapol == ((void*)0))
  return -1;
 return wpa_auth->cb->send_eapol(wpa_auth->cb_ctx, addr, data, data_len,
     encrypt);
}
