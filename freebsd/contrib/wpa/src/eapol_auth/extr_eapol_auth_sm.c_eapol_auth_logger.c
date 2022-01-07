
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ctx; } ;
struct TYPE_3__ {int (* logger ) (int ,int const*,int ,char const*) ;} ;
struct eapol_authenticator {TYPE_2__ conf; TYPE_1__ cb; } ;
typedef int eapol_logger_level ;


 int stub1 (int ,int const*,int ,char const*) ;

__attribute__((used)) static void eapol_auth_logger(struct eapol_authenticator *eapol,
         const u8 *addr, eapol_logger_level level,
         const char *txt)
{
 if (eapol->cb.logger == ((void*)0))
  return;
 eapol->cb.logger(eapol->conf.ctx, addr, level, txt);
}
