
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {TYPE_1__* m; int * eap_method_priv; int selectedMethod; int * ext_pw_buf; } ;
struct TYPE_2__ {int (* deinit ) (struct eap_sm*,int *) ;int name; } ;


 int MSG_DEBUG ;
 int ext_password_free (int *) ;
 int stub1 (struct eap_sm*,int *) ;
 int wpa_printf (int ,char*,int ,int ,char const*) ;

__attribute__((used)) static void eap_deinit_prev_method(struct eap_sm *sm, const char *txt)
{
 ext_password_free(sm->ext_pw_buf);
 sm->ext_pw_buf = ((void*)0);

 if (sm->m == ((void*)0) || sm->eap_method_priv == ((void*)0))
  return;

 wpa_printf(MSG_DEBUG, "EAP: deinitialize previously used EAP method "
     "(%d, %s) at %s", sm->selectedMethod, sm->m->name, txt);
 sm->m->deinit(sm, sm->eap_method_priv);
 sm->eap_method_priv = ((void*)0);
 sm->m = ((void*)0);
}
