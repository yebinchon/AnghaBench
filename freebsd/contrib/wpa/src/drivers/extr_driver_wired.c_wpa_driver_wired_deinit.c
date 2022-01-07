
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_wired_data {int common; } ;


 int driver_wired_deinit_common (int *) ;
 int os_free (struct wpa_driver_wired_data*) ;

__attribute__((used)) static void wpa_driver_wired_deinit(void *priv)
{
 struct wpa_driver_wired_data *drv = priv;

 driver_wired_deinit_common(&drv->common);
 os_free(drv);
}
