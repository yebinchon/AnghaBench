
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {char const* ifname; } ;



__attribute__((used)) static const char * wpa_driver_ndis_get_ifname(void *priv)
{
 struct wpa_driver_ndis_data *drv = priv;
 return drv->ifname;
}
