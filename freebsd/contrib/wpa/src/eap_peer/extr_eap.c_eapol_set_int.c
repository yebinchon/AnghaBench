
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
typedef enum eapol_int_var { ____Placeholder_eapol_int_var } eapol_int_var ;
struct TYPE_2__ {int (* set_int ) (int ,int,unsigned int) ;} ;


 int stub1 (int ,int,unsigned int) ;

__attribute__((used)) static void eapol_set_int(struct eap_sm *sm, enum eapol_int_var var,
     unsigned int value)
{
 sm->eapol_cb->set_int(sm->eapol_ctx, var, value);
}
