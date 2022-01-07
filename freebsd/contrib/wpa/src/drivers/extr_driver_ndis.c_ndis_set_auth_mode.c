
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef int auth_mode ;


 int MSG_DEBUG ;
 int OID_802_11_AUTHENTICATION_MODE ;
 scalar_t__ ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int ndis_set_auth_mode(struct wpa_driver_ndis_data *drv, int mode)
{
 u32 auth_mode = mode;
 if (ndis_set_oid(drv, OID_802_11_AUTHENTICATION_MODE,
    (char *) &auth_mode, sizeof(auth_mode)) < 0) {
  wpa_printf(MSG_DEBUG, "NDIS: Failed to set "
      "OID_802_11_AUTHENTICATION_MODE (%d)",
      (int) auth_mode);
  return -1;
 }
 return 0;
}
