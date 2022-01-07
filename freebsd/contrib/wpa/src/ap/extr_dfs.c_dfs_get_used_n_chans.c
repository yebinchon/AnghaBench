
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; scalar_t__ secondary_channel; scalar_t__ ieee80211n; } ;






 int hostapd_get_oper_chwidth (TYPE_1__*) ;

__attribute__((used)) static int dfs_get_used_n_chans(struct hostapd_iface *iface, int *seg1)
{
 int n_chans = 1;

 *seg1 = 0;

 if (iface->conf->ieee80211n && iface->conf->secondary_channel)
  n_chans = 2;

 if (iface->conf->ieee80211ac || iface->conf->ieee80211ax) {
  switch (hostapd_get_oper_chwidth(iface->conf)) {
  case 128:
   break;
  case 130:
   n_chans = 4;
   break;
  case 131:
   n_chans = 8;
   break;
  case 129:
   n_chans = 4;
   *seg1 = 4;
   break;
  default:
   break;
  }
 }

 return n_chans;
}
