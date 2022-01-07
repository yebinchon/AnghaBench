
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_ndis_data {scalar_t__ wired; } ;


 int ETH_ALEN ;
 int OID_802_11_BSSID ;
 scalar_t__ ndis_get_oid (struct wpa_driver_ndis_data*,int ,char*,int ) ;
 int os_memcpy (int *,int ,int ) ;
 int pae_group_addr ;

__attribute__((used)) static int wpa_driver_ndis_get_bssid(void *priv, u8 *bssid)
{
 struct wpa_driver_ndis_data *drv = priv;

 if (drv->wired) {




  os_memcpy(bssid, pae_group_addr, ETH_ALEN);
  return 0;
 }

 return ndis_get_oid(drv, OID_802_11_BSSID, (char *) bssid, ETH_ALEN) <
  0 ? -1 : 0;
}
