
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {char const* (* get_erp_domain ) (int ) ;} ;


 char const* stub1 (int ) ;

__attribute__((used)) static const char * eap_get_erp_domain(struct eap_sm *sm)
{
 if (sm->eapol_cb->get_erp_domain)
  return sm->eapol_cb->get_erp_domain(sm->eapol_ctx);
 return ((void*)0);
}
