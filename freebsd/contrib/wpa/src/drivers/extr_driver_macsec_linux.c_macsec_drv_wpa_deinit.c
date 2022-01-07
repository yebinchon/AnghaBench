
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_drv_data {int common; } ;


 int driver_wired_deinit_common (int *) ;
 int os_free (struct macsec_drv_data*) ;

__attribute__((used)) static void macsec_drv_wpa_deinit(void *priv)
{
 struct macsec_drv_data *drv = priv;

 driver_wired_deinit_common(&drv->common);
 os_free(drv);
}
