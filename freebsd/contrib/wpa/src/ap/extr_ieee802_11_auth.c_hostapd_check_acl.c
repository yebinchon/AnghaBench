
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vlan_description {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ macaddr_acl; int num_deny_mac; int deny_mac; int num_accept_mac; int accept_mac; } ;


 scalar_t__ ACCEPT_UNLESS_DENIED ;
 scalar_t__ DENY_UNLESS_ACCEPTED ;
 int HOSTAPD_ACL_ACCEPT ;
 int HOSTAPD_ACL_PENDING ;
 int HOSTAPD_ACL_REJECT ;
 scalar_t__ hostapd_maclist_found (int ,int ,int const*,struct vlan_description*) ;

int hostapd_check_acl(struct hostapd_data *hapd, const u8 *addr,
        struct vlan_description *vlan_id)
{
 if (hostapd_maclist_found(hapd->conf->accept_mac,
      hapd->conf->num_accept_mac, addr, vlan_id))
  return HOSTAPD_ACL_ACCEPT;

 if (hostapd_maclist_found(hapd->conf->deny_mac,
      hapd->conf->num_deny_mac, addr, vlan_id))
  return HOSTAPD_ACL_REJECT;

 if (hapd->conf->macaddr_acl == ACCEPT_UNLESS_DENIED)
  return HOSTAPD_ACL_ACCEPT;
 if (hapd->conf->macaddr_acl == DENY_UNLESS_ACCEPTED)
  return HOSTAPD_ACL_REJECT;

 return HOSTAPD_ACL_PENDING;
}
