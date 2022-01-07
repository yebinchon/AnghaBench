
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {int capa; int has_capability; } ;
struct wpa_driver_capa {int dummy; } ;


 int os_memcpy (struct wpa_driver_capa*,int *,int) ;

__attribute__((used)) static int wpa_driver_ndis_get_capa(void *priv, struct wpa_driver_capa *capa)
{
 struct wpa_driver_ndis_data *drv = priv;
 if (!drv->has_capability)
  return -1;
 os_memcpy(capa, &drv->capa, sizeof(*capa));
 return 0;
}
