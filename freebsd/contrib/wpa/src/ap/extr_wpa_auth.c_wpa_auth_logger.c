
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
typedef int logger_level ;
struct TYPE_2__ {int (* logger ) (int ,int const*,int ,char const*) ;} ;


 int stub1 (int ,int const*,int ,char const*) ;

void wpa_auth_logger(struct wpa_authenticator *wpa_auth, const u8 *addr,
       logger_level level, const char *txt)
{
 if (wpa_auth->cb->logger == ((void*)0))
  return;
 wpa_auth->cb->logger(wpa_auth->cb_ctx, addr, level, txt);
}
