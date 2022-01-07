
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openbsd_driver_data {int sock; } ;


 int close (int ) ;
 int os_free (struct openbsd_driver_data*) ;

__attribute__((used)) static void
wpa_driver_openbsd_deinit(void *priv)
{
 struct openbsd_driver_data *drv = priv;

 close(drv->sock);
 os_free(drv);
}
