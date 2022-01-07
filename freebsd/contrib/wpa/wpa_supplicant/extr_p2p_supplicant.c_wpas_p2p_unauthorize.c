
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_data {int dummy; } ;
struct TYPE_2__ {struct p2p_data* p2p; } ;


 int ETH_ALEN ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 int p2p_unauthorize (struct p2p_data*,int *) ;

int wpas_p2p_unauthorize(struct wpa_supplicant *wpa_s, const char *addr)
{
 u8 peer[ETH_ALEN];
 struct p2p_data *p2p = wpa_s->global->p2p;

 if (p2p == ((void*)0))
  return -1;

 if (hwaddr_aton(addr, peer))
  return -1;

 return p2p_unauthorize(p2p, peer);
}
