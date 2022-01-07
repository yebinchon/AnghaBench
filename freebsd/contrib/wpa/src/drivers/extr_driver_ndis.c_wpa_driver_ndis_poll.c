
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {int dummy; } ;


 int eloop_cancel_timeout (int (*) (struct wpa_driver_ndis_data*,int *),struct wpa_driver_ndis_data*,int *) ;
 int wpa_driver_ndis_poll_timeout (struct wpa_driver_ndis_data*,int *) ;

__attribute__((used)) static void wpa_driver_ndis_poll(void *priv)
{
 struct wpa_driver_ndis_data *drv = priv;
 eloop_cancel_timeout(wpa_driver_ndis_poll_timeout, drv, ((void*)0));
 wpa_driver_ndis_poll_timeout(drv, ((void*)0));
}
