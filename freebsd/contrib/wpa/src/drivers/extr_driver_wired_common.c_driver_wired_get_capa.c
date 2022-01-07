
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_capa {int flags; } ;


 int WPA_DRIVER_FLAGS_WIRED ;
 int os_memset (struct wpa_driver_capa*,int ,int) ;

int driver_wired_get_capa(void *priv, struct wpa_driver_capa *capa)
{
 os_memset(capa, 0, sizeof(*capa));
 capa->flags = WPA_DRIVER_FLAGS_WIRED;
 return 0;
}
