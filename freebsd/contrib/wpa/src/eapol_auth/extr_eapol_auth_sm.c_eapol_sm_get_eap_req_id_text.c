
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eapol_state_machine {TYPE_2__* eapol; } ;
struct TYPE_3__ {size_t eap_req_id_text_len; char const* eap_req_id_text; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;



__attribute__((used)) static const char * eapol_sm_get_eap_req_id_text(void *ctx, size_t *len)
{
 struct eapol_state_machine *sm = ctx;
 *len = sm->eapol->conf.eap_req_id_text_len;
 return sm->eapol->conf.eap_req_id_text;
}
