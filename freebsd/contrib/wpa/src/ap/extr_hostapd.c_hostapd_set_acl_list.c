
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mac_acl_entry {int addr; } ;
struct hostapd_data {int dummy; } ;
struct hostapd_acl_params {int num_mac_acl; int acl_policy; TYPE_1__* mac_acl; } ;
struct TYPE_2__ {int addr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int hostapd_drv_set_acl (struct hostapd_data*,struct hostapd_acl_params*) ;
 int os_free (struct hostapd_acl_params*) ;
 int os_memcpy (int ,int ,int ) ;
 struct hostapd_acl_params* os_zalloc (int) ;

__attribute__((used)) static int hostapd_set_acl_list(struct hostapd_data *hapd,
    struct mac_acl_entry *mac_acl,
    int n_entries, u8 accept_acl)
{
 struct hostapd_acl_params *acl_params;
 int i, err;

 acl_params = os_zalloc(sizeof(*acl_params) +
          (n_entries * sizeof(acl_params->mac_acl[0])));
 if (!acl_params)
  return -ENOMEM;

 for (i = 0; i < n_entries; i++)
  os_memcpy(acl_params->mac_acl[i].addr, mac_acl[i].addr,
     ETH_ALEN);

 acl_params->acl_policy = accept_acl;
 acl_params->num_mac_acl = n_entries;

 err = hostapd_drv_set_acl(hapd, acl_params);

 os_free(acl_params);

 return err;
}
