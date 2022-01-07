
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eapol_state_machine {TYPE_2__* eapol; } ;
struct TYPE_3__ {char const* erp_domain; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;



__attribute__((used)) static const char * eapol_sm_get_erp_domain(void *ctx)
{
 struct eapol_state_machine *sm = ctx;
 return sm->eapol->conf.erp_domain;
}
