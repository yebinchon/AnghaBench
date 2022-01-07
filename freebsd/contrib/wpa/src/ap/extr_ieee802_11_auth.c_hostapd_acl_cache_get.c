
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vlan_description {int dummy; } ;
struct os_reltime {int dummy; } ;
struct hostapd_sta_wpa_psk_short {int dummy; } ;
struct hostapd_data {struct hostapd_cached_radius_acl* acl_cache; } ;
struct hostapd_cached_radius_acl {scalar_t__ accepted; scalar_t__ radius_cui; scalar_t__ identity; int psk; struct vlan_description vlan_id; int acct_interim_interval; int session_timeout; int timestamp; int addr; struct hostapd_cached_radius_acl* next; } ;


 int ETH_ALEN ;
 scalar_t__ HOSTAPD_ACL_ACCEPT_TIMEOUT ;
 int RADIUS_ACL_TIMEOUT ;
 int copy_psk_list (struct hostapd_sta_wpa_psk_short**,int ) ;
 int os_get_reltime (struct os_reltime*) ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 scalar_t__ os_reltime_expired (struct os_reltime*,int *,int ) ;
 char* os_strdup (scalar_t__) ;

__attribute__((used)) static int hostapd_acl_cache_get(struct hostapd_data *hapd, const u8 *addr,
     u32 *session_timeout,
     u32 *acct_interim_interval,
     struct vlan_description *vlan_id,
     struct hostapd_sta_wpa_psk_short **psk,
     char **identity, char **radius_cui)
{
 struct hostapd_cached_radius_acl *entry;
 struct os_reltime now;

 os_get_reltime(&now);

 for (entry = hapd->acl_cache; entry; entry = entry->next) {
  if (os_memcmp(entry->addr, addr, ETH_ALEN) != 0)
   continue;

  if (os_reltime_expired(&now, &entry->timestamp,
           RADIUS_ACL_TIMEOUT))
   return -1;
  if (entry->accepted == HOSTAPD_ACL_ACCEPT_TIMEOUT)
   if (session_timeout)
    *session_timeout = entry->session_timeout;
  if (acct_interim_interval)
   *acct_interim_interval =
    entry->acct_interim_interval;
  if (vlan_id)
   *vlan_id = entry->vlan_id;
  copy_psk_list(psk, entry->psk);
  if (identity) {
   if (entry->identity)
    *identity = os_strdup(entry->identity);
   else
    *identity = ((void*)0);
  }
  if (radius_cui) {
   if (entry->radius_cui)
    *radius_cui = os_strdup(entry->radius_cui);
   else
    *radius_cui = ((void*)0);
  }
  return entry->accepted;
 }

 return -1;
}
