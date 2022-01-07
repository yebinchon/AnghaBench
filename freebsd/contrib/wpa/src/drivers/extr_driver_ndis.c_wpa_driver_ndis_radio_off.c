
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {scalar_t__ radio_enabled; } ;


 int OID_802_11_DISASSOCIATE ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;

__attribute__((used)) static int wpa_driver_ndis_radio_off(struct wpa_driver_ndis_data *drv)
{
 drv->radio_enabled = 0;
 return ndis_set_oid(drv, OID_802_11_DISASSOCIATE, "    ", 4);
}
