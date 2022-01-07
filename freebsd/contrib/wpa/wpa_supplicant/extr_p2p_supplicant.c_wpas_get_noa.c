
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int own_addr; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int wpa_drv_get_noa (struct wpa_supplicant*,int *,size_t) ;

__attribute__((used)) static int wpas_get_noa(void *ctx, const u8 *interface_addr, u8 *buf,
   size_t buf_len)
{
 struct wpa_supplicant *wpa_s = ctx;

 for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (os_memcmp(wpa_s->own_addr, interface_addr, ETH_ALEN) == 0)
   break;
 }
 if (wpa_s == ((void*)0))
  return -1;

 return wpa_drv_get_noa(wpa_s, buf, buf_len);
}
