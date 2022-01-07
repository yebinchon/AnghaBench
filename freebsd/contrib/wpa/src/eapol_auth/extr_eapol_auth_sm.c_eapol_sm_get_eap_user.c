
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct eapol_state_machine {int remediation; TYPE_3__* eapol; } ;
struct eap_user {scalar_t__ remediation; } ;
struct TYPE_5__ {int ctx; } ;
struct TYPE_4__ {int (* get_eap_user ) (int ,int const*,size_t,int,struct eap_user*) ;} ;
struct TYPE_6__ {TYPE_2__ conf; TYPE_1__ cb; } ;


 int stub1 (int ,int const*,size_t,int,struct eap_user*) ;

__attribute__((used)) static int eapol_sm_get_eap_user(void *ctx, const u8 *identity,
     size_t identity_len, int phase2,
     struct eap_user *user)
{
 struct eapol_state_machine *sm = ctx;
 int ret;

 ret = sm->eapol->cb.get_eap_user(sm->eapol->conf.ctx, identity,
      identity_len, phase2, user);
 if (user->remediation)
  sm->remediation = 1;
 return ret;
}
