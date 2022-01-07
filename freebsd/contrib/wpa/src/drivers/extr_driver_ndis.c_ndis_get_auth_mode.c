
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef int auth_mode ;


 int MSG_DEBUG ;
 int OID_802_11_AUTHENTICATION_MODE ;
 int ndis_get_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ndis_get_auth_mode(struct wpa_driver_ndis_data *drv)
{
 u32 auth_mode;
 int res;
 res = ndis_get_oid(drv, OID_802_11_AUTHENTICATION_MODE,
      (char *) &auth_mode, sizeof(auth_mode));
 if (res != sizeof(auth_mode)) {
  wpa_printf(MSG_DEBUG, "NDIS: Failed to get "
      "OID_802_11_AUTHENTICATION_MODE");
  return -1;
 }
 return auth_mode;
}
