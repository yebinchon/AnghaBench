
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_password_data {int dummy; } ;
struct eapol_sm {scalar_t__ eap; } ;


 int eap_sm_set_ext_pw_ctx (scalar_t__,struct ext_password_data*) ;

void eapol_sm_set_ext_pw_ctx(struct eapol_sm *sm,
        struct ext_password_data *ext)
{
 if (sm && sm->eap)
  eap_sm_set_ext_pw_ctx(sm->eap, ext);
}
