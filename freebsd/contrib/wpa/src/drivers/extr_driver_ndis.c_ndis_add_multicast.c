
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {int dummy; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int OID_802_3_MULTICAST_LIST ;
 scalar_t__ ndis_set_oid (struct wpa_driver_ndis_data*,int ,char const*,int ) ;
 scalar_t__ pae_group_addr ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ndis_add_multicast(struct wpa_driver_ndis_data *drv)
{
 if (ndis_set_oid(drv, OID_802_3_MULTICAST_LIST,
    (const char *) pae_group_addr, ETH_ALEN) < 0) {
  wpa_printf(MSG_DEBUG, "NDIS: Failed to add PAE group address "
      "to the multicast list");
  return -1;
 }

 return 0;
}
