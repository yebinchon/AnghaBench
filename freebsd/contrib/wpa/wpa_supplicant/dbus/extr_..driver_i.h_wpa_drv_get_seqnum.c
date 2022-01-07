
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; int ifname; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_seqnum ) (int ,int ,int const*,int,int *) ;} ;


 int stub1 (int ,int ,int const*,int,int *) ;

__attribute__((used)) static inline int wpa_drv_get_seqnum(struct wpa_supplicant *wpa_s,
         const u8 *addr, int idx, u8 *seq)
{
 if (wpa_s->driver->get_seqnum)
  return wpa_s->driver->get_seqnum(wpa_s->ifname, wpa_s->drv_priv,
       addr, idx, seq);
 return -1;
}
