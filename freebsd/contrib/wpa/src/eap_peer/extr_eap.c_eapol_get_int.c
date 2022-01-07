
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
typedef enum eapol_int_var { ____Placeholder_eapol_int_var } eapol_int_var ;
struct TYPE_2__ {unsigned int (* get_int ) (int ,int) ;} ;


 unsigned int stub1 (int ,int) ;

__attribute__((used)) static unsigned int eapol_get_int(struct eap_sm *sm, enum eapol_int_var var)
{
 return sm->eapol_cb->get_int(sm->eapol_ctx, var);
}
