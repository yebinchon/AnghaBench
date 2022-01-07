
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_description {scalar_t__ notempty; } ;
struct sta_info {struct vlan_description* vlan_desc; } ;
struct rsn_pmksa_cache_entry {int acct_multi_session_id; struct vlan_description* vlan_desc; int eap_type_authsrv; int radius_class; int cui; scalar_t__ identity; int identity_len; } ;
struct eapol_state_machine {int acct_multi_session_id; scalar_t__ sta; int eap_type_authsrv; int radius_class; scalar_t__ radius_cui; int identity_len; scalar_t__ identity; } ;


 scalar_t__ os_malloc (int ) ;
 int os_memcpy (scalar_t__,scalar_t__,int ) ;
 struct vlan_description* os_zalloc (int) ;
 int radius_copy_class (int *,int *) ;
 int wpabuf_dup (scalar_t__) ;

__attribute__((used)) static void pmksa_cache_from_eapol_data(struct rsn_pmksa_cache_entry *entry,
     struct eapol_state_machine *eapol)
{
 struct vlan_description *vlan_desc;

 if (eapol == ((void*)0))
  return;

 if (eapol->identity) {
  entry->identity = os_malloc(eapol->identity_len);
  if (entry->identity) {
   entry->identity_len = eapol->identity_len;
   os_memcpy(entry->identity, eapol->identity,
      eapol->identity_len);
  }
 }

 if (eapol->radius_cui)
  entry->cui = wpabuf_dup(eapol->radius_cui);


 radius_copy_class(&entry->radius_class, &eapol->radius_class);


 entry->eap_type_authsrv = eapol->eap_type_authsrv;

 vlan_desc = ((struct sta_info *) eapol->sta)->vlan_desc;
 if (vlan_desc && vlan_desc->notempty) {
  entry->vlan_desc = os_zalloc(sizeof(struct vlan_description));
  if (entry->vlan_desc)
   *entry->vlan_desc = *vlan_desc;
 } else {
  entry->vlan_desc = ((void*)0);
 }

 entry->acct_multi_session_id = eapol->acct_multi_session_id;
}
