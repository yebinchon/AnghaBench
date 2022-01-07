
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ctx; } ;
struct TYPE_3__ {int (* sta_entry_alive ) (int ,int const*) ;} ;
struct eapol_authenticator {TYPE_2__ conf; TYPE_1__ cb; } ;


 int stub1 (int ,int const*) ;

__attribute__((used)) static int eapol_sm_sta_entry_alive(struct eapol_authenticator *eapol,
        const u8 *addr)
{
 return eapol->cb.sta_entry_alive(eapol->conf.ctx, addr);
}
