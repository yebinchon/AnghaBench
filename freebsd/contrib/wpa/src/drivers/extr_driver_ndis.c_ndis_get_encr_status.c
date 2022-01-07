
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef int encr ;


 int MSG_DEBUG ;
 int OID_802_11_ENCRYPTION_STATUS ;
 int ndis_get_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ndis_get_encr_status(struct wpa_driver_ndis_data *drv)
{
 u32 encr;
 int res;
 res = ndis_get_oid(drv, OID_802_11_ENCRYPTION_STATUS,
      (char *) &encr, sizeof(encr));
 if (res != sizeof(encr)) {
  wpa_printf(MSG_DEBUG, "NDIS: Failed to get "
      "OID_802_11_ENCRYPTION_STATUS");
  return -1;
 }
 return encr;
}
