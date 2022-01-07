
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wpa_eapol_variable ;
typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* get_eapol ) (int ,int const*,int ) ;} ;


 int stub1 (int ,int const*,int ) ;

__attribute__((used)) static inline int wpa_auth_get_eapol(struct wpa_authenticator *wpa_auth,
         const u8 *addr, wpa_eapol_variable var)
{
 if (wpa_auth->cb->get_eapol == ((void*)0))
  return -1;
 return wpa_auth->cb->get_eapol(wpa_auth->cb_ctx, addr, var);
}
