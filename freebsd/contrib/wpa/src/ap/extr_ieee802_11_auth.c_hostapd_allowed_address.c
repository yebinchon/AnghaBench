
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct vlan_description {int dummy; } ;
struct hostapd_sta_wpa_psk_short {int dummy; } ;
struct hostapd_data {struct hostapd_acl_query_data* acl_queries; TYPE_3__* conf; } ;
struct hostapd_acl_query_data {size_t auth_msg_len; struct hostapd_acl_query_data* next; int * auth_msg; int addr; int timestamp; } ;
struct TYPE_4__ {scalar_t__ dynamic_vlan; } ;
struct TYPE_6__ {scalar_t__ macaddr_acl; TYPE_2__* radius; TYPE_1__ ssid; } ;
struct TYPE_5__ {int auth_server; } ;


 scalar_t__ DYNAMIC_VLAN_DISABLED ;
 int ETH_ALEN ;
 int HOSTAPD_ACL_ACCEPT ;
 int HOSTAPD_ACL_ACCEPT_TIMEOUT ;
 int HOSTAPD_ACL_PENDING ;
 int HOSTAPD_ACL_REJECT ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ USE_EXTERNAL_RADIUS_AUTH ;
 int hostapd_acl_cache_get (struct hostapd_data*,int const*,scalar_t__*,scalar_t__*,struct vlan_description*,struct hostapd_sta_wpa_psk_short**,char**,char**) ;
 int hostapd_acl_query_free (struct hostapd_acl_query_data*) ;
 int hostapd_check_acl (struct hostapd_data*,int const*,struct vlan_description*) ;
 scalar_t__ hostapd_radius_acl_query (struct hostapd_data*,int const*,struct hostapd_acl_query_data*) ;
 int os_free (char*) ;
 int os_get_reltime (int *) ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int * os_memdup (int const*,size_t) ;
 int os_memset (struct vlan_description*,int ,int) ;
 struct hostapd_acl_query_data* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

int hostapd_allowed_address(struct hostapd_data *hapd, const u8 *addr,
       const u8 *msg, size_t len, u32 *session_timeout,
       u32 *acct_interim_interval,
       struct vlan_description *vlan_id,
       struct hostapd_sta_wpa_psk_short **psk,
       char **identity, char **radius_cui,
       int is_probe_req)
{
 int res;

 if (session_timeout)
  *session_timeout = 0;
 if (acct_interim_interval)
  *acct_interim_interval = 0;
 if (vlan_id)
  os_memset(vlan_id, 0, sizeof(*vlan_id));
 if (psk)
  *psk = ((void*)0);
 if (identity)
  *identity = ((void*)0);
 if (radius_cui)
  *radius_cui = ((void*)0);

 res = hostapd_check_acl(hapd, addr, vlan_id);
 if (res != HOSTAPD_ACL_PENDING)
  return res;

 if (hapd->conf->macaddr_acl == USE_EXTERNAL_RADIUS_AUTH) {



  struct hostapd_acl_query_data *query;

  if (is_probe_req) {


   return HOSTAPD_ACL_ACCEPT;
  };

  if (hapd->conf->ssid.dynamic_vlan == DYNAMIC_VLAN_DISABLED)
   vlan_id = ((void*)0);


  res = hostapd_acl_cache_get(hapd, addr, session_timeout,
         acct_interim_interval, vlan_id, psk,
         identity, radius_cui);
  if (res == HOSTAPD_ACL_ACCEPT ||
      res == HOSTAPD_ACL_ACCEPT_TIMEOUT)
   return res;
  if (res == HOSTAPD_ACL_REJECT)
   return HOSTAPD_ACL_REJECT;

  query = hapd->acl_queries;
  while (query) {
   if (os_memcmp(query->addr, addr, ETH_ALEN) == 0) {


    if (identity) {
     os_free(*identity);
     *identity = ((void*)0);
    }
    if (radius_cui) {
     os_free(*radius_cui);
     *radius_cui = ((void*)0);
    }
    return HOSTAPD_ACL_PENDING;
   }
   query = query->next;
  }

  if (!hapd->conf->radius->auth_server)
   return HOSTAPD_ACL_REJECT;


  query = os_zalloc(sizeof(*query));
  if (query == ((void*)0)) {
   wpa_printf(MSG_ERROR, "malloc for query data failed");
   return HOSTAPD_ACL_REJECT;
  }
  os_get_reltime(&query->timestamp);
  os_memcpy(query->addr, addr, ETH_ALEN);
  if (hostapd_radius_acl_query(hapd, addr, query)) {
   wpa_printf(MSG_DEBUG, "Failed to send Access-Request "
       "for ACL query.");
   hostapd_acl_query_free(query);
   return HOSTAPD_ACL_REJECT;
  }

  query->auth_msg = os_memdup(msg, len);
  if (query->auth_msg == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Failed to allocate memory for "
       "auth frame.");
   hostapd_acl_query_free(query);
   return HOSTAPD_ACL_REJECT;
  }
  query->auth_msg_len = len;
  query->next = hapd->acl_queries;
  hapd->acl_queries = query;



  return HOSTAPD_ACL_PENDING;

 }

 return HOSTAPD_ACL_REJECT;
}
