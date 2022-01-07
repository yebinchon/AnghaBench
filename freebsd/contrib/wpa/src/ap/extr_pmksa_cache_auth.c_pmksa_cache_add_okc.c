
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vlan_description {int dummy; } ;
struct rsn_pmksa_cache_entry {int opportunistic; int * vlan_desc; int eap_type_authsrv; int radius_class; scalar_t__ cui; int identity_len; int const* identity; int const* spa; int akmp; int expiration; int pmk_len; int const* pmk; int const* pmkid; } ;
struct rsn_pmksa_cache {int dummy; } ;


 int ETH_ALEN ;
 int PMKID_LEN ;
 int const* os_malloc (int ) ;
 int os_memcpy (int const*,int const*,int ) ;
 void* os_zalloc (int) ;
 int pmksa_cache_link_entry (struct rsn_pmksa_cache*,struct rsn_pmksa_cache_entry*) ;
 int radius_copy_class (int *,int *) ;
 scalar_t__ wpabuf_dup (scalar_t__) ;

struct rsn_pmksa_cache_entry *
pmksa_cache_add_okc(struct rsn_pmksa_cache *pmksa,
      const struct rsn_pmksa_cache_entry *old_entry,
      const u8 *aa, const u8 *pmkid)
{
 struct rsn_pmksa_cache_entry *entry;

 entry = os_zalloc(sizeof(*entry));
 if (entry == ((void*)0))
  return ((void*)0);
 os_memcpy(entry->pmkid, pmkid, PMKID_LEN);
 os_memcpy(entry->pmk, old_entry->pmk, old_entry->pmk_len);
 entry->pmk_len = old_entry->pmk_len;
 entry->expiration = old_entry->expiration;
 entry->akmp = old_entry->akmp;
 os_memcpy(entry->spa, old_entry->spa, ETH_ALEN);
 entry->opportunistic = 1;
 if (old_entry->identity) {
  entry->identity = os_malloc(old_entry->identity_len);
  if (entry->identity) {
   entry->identity_len = old_entry->identity_len;
   os_memcpy(entry->identity, old_entry->identity,
      old_entry->identity_len);
  }
 }
 if (old_entry->cui)
  entry->cui = wpabuf_dup(old_entry->cui);

 radius_copy_class(&entry->radius_class, &old_entry->radius_class);

 entry->eap_type_authsrv = old_entry->eap_type_authsrv;
 if (old_entry->vlan_desc) {
  entry->vlan_desc = os_zalloc(sizeof(struct vlan_description));
  if (entry->vlan_desc)
   *entry->vlan_desc = *old_entry->vlan_desc;
 } else {
  entry->vlan_desc = ((void*)0);
 }
 entry->opportunistic = 1;

 pmksa_cache_link_entry(pmksa, entry);

 return entry;
}
