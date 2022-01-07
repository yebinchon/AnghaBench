
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* mic_failure_report ) (int ,int const*) ;} ;


 int stub1 (int ,int const*) ;

__attribute__((used)) static inline int wpa_auth_mic_failure_report(
 struct wpa_authenticator *wpa_auth, const u8 *addr)
{
 if (wpa_auth->cb->mic_failure_report)
  return wpa_auth->cb->mic_failure_report(wpa_auth->cb_ctx, addr);
 return 0;
}
