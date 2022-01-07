
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef int encr_status ;


 int MSG_DEBUG ;
 int OID_802_11_ENCRYPTION_STATUS ;
 scalar_t__ ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int ndis_set_encr_status(struct wpa_driver_ndis_data *drv, int encr)
{
 u32 encr_status = encr;
 if (ndis_set_oid(drv, OID_802_11_ENCRYPTION_STATUS,
    (char *) &encr_status, sizeof(encr_status)) < 0) {
  wpa_printf(MSG_DEBUG, "NDIS: Failed to set "
      "OID_802_11_ENCRYPTION_STATUS (%d)", encr);
  return -1;
 }
 return 0;
}
