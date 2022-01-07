
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_driver_ndis_data {int dummy; } ;


 int wpa_driver_ndis_disconnect (struct wpa_driver_ndis_data*) ;

__attribute__((used)) static int wpa_driver_ndis_deauthenticate(void *priv, const u8 *addr,
       u16 reason_code)
{
 struct wpa_driver_ndis_data *drv = priv;
 return wpa_driver_ndis_disconnect(drv);
}
