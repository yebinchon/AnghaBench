
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap; } ;


 int eap_peer_erp_free_keys (int ) ;

void eapol_sm_erp_flush(struct eapol_sm *sm)
{
 if (sm)
  eap_peer_erp_free_keys(sm->eap);
}
