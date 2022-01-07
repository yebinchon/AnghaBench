
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_capa {int dummy; } ;
struct bsd_driver_data {int capa; } ;


 int os_memcpy (struct wpa_driver_capa*,int *,int) ;

__attribute__((used)) static int
wpa_driver_bsd_get_capa(void *priv, struct wpa_driver_capa *capa)
{
 struct bsd_driver_data *drv = priv;

 os_memcpy(capa, &drv->capa, sizeof(*capa));
 return 0;
}
