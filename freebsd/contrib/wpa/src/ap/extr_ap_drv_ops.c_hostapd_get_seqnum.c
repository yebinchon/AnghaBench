
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_seqnum ) (char const*,int ,int const*,int,int *) ;} ;


 int stub1 (char const*,int ,int const*,int,int *) ;

int hostapd_get_seqnum(const char *ifname, struct hostapd_data *hapd,
         const u8 *addr, int idx, u8 *seq)
{
 if (hapd->driver == ((void*)0) || hapd->driver->get_seqnum == ((void*)0))
  return 0;
 return hapd->driver->get_seqnum(ifname, hapd->drv_priv, addr, idx,
     seq);
}
