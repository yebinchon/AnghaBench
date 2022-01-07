
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_ndis_data {int const* own_addr; } ;



__attribute__((used)) static const u8 * wpa_driver_ndis_get_mac_addr(void *priv)
{
 struct wpa_driver_ndis_data *drv = priv;
 return drv->own_addr;
}
