
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int erp_add_key; int erp_get_key; int eapol_event; int tx_key; int abort_auth; int set_port_authorized; int logger; int sta_entry_alive; int get_eap_user; int finished; int aaa_send; int eapol_send; } ;
struct eapol_authenticator {int default_wep_key_idx; TYPE_1__ cb; int conf; } ;
struct eapol_auth_config {scalar_t__ individual_wep_key_len; } ;
struct eapol_auth_cb {int erp_add_key; int erp_get_key; int eapol_event; int tx_key; int abort_auth; int set_port_authorized; int logger; int sta_entry_alive; int get_eap_user; int finished; int aaa_send; int eapol_send; } ;


 scalar_t__ eapol_auth_conf_clone (int *,struct eapol_auth_config*) ;
 int os_free (struct eapol_authenticator*) ;
 struct eapol_authenticator* os_zalloc (int) ;

struct eapol_authenticator * eapol_auth_init(struct eapol_auth_config *conf,
          struct eapol_auth_cb *cb)
{
 struct eapol_authenticator *eapol;

 eapol = os_zalloc(sizeof(*eapol));
 if (eapol == ((void*)0))
  return ((void*)0);

 if (eapol_auth_conf_clone(&eapol->conf, conf) < 0) {
  os_free(eapol);
  return ((void*)0);
 }

 if (conf->individual_wep_key_len > 0) {

  eapol->default_wep_key_idx = 1;
 }

 eapol->cb.eapol_send = cb->eapol_send;
 eapol->cb.aaa_send = cb->aaa_send;
 eapol->cb.finished = cb->finished;
 eapol->cb.get_eap_user = cb->get_eap_user;
 eapol->cb.sta_entry_alive = cb->sta_entry_alive;
 eapol->cb.logger = cb->logger;
 eapol->cb.set_port_authorized = cb->set_port_authorized;
 eapol->cb.abort_auth = cb->abort_auth;
 eapol->cb.tx_key = cb->tx_key;
 eapol->cb.eapol_event = cb->eapol_event;
 eapol->cb.erp_get_key = cb->erp_get_key;
 eapol->cb.erp_add_key = cb->erp_add_key;

 return eapol;
}
