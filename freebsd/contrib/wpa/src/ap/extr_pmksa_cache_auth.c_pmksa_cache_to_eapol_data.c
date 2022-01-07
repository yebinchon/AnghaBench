
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rsn_pmksa_cache_entry {int acct_multi_session_id; int vlan_desc; int eap_type_authsrv; int radius_class; scalar_t__ cui; int identity_len; scalar_t__ identity; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ attr; } ;
struct eapol_state_machine {int acct_multi_session_id; int sta; int eap_type_authsrv; TYPE_1__ radius_class; int radius_cui; int identity_len; scalar_t__ identity; } ;


 int MSG_DEBUG ;
 int ap_sta_set_vlan (struct hostapd_data*,int ,int ) ;
 int os_free (scalar_t__) ;
 scalar_t__ os_malloc (int ) ;
 int os_memcpy (scalar_t__,scalar_t__,int ) ;
 int radius_copy_class (TYPE_1__*,int *) ;
 int radius_free_class (TYPE_1__*) ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;
 int wpabuf_dup (scalar_t__) ;
 int wpabuf_free (int ) ;

void pmksa_cache_to_eapol_data(struct hostapd_data *hapd,
          struct rsn_pmksa_cache_entry *entry,
          struct eapol_state_machine *eapol)
{
 if (entry == ((void*)0) || eapol == ((void*)0))
  return;

 if (entry->identity) {
  os_free(eapol->identity);
  eapol->identity = os_malloc(entry->identity_len);
  if (eapol->identity) {
   eapol->identity_len = entry->identity_len;
   os_memcpy(eapol->identity, entry->identity,
      entry->identity_len);
  }
  wpa_hexdump_ascii(MSG_DEBUG, "STA identity from PMKSA",
      eapol->identity, eapol->identity_len);
 }

 if (entry->cui) {
  wpabuf_free(eapol->radius_cui);
  eapol->radius_cui = wpabuf_dup(entry->cui);
 }


 radius_free_class(&eapol->radius_class);
 radius_copy_class(&eapol->radius_class, &entry->radius_class);

 if (eapol->radius_class.attr) {
  wpa_printf(MSG_DEBUG, "Copied %lu Class attribute(s) from "
      "PMKSA", (unsigned long) eapol->radius_class.count);
 }

 eapol->eap_type_authsrv = entry->eap_type_authsrv;

 ap_sta_set_vlan(hapd, eapol->sta, entry->vlan_desc);


 eapol->acct_multi_session_id = entry->acct_multi_session_id;
}
