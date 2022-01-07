
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_capa {int flags; } ;


 int WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_8021X ;
 int WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_PSK ;
 int os_memset (struct wpa_driver_capa*,int ,int) ;

__attribute__((used)) static int
wpa_driver_openbsd_get_capa(void *priv, struct wpa_driver_capa *capa)
{
 os_memset(capa, 0, sizeof(*capa));
 capa->flags = WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_PSK |
        WPA_DRIVER_FLAGS_4WAY_HANDSHAKE_8021X;
 return 0;
}
