
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int iface; } ;


 int hostapd_broadcast_key_clear_iface (struct hostapd_data*,int ) ;

__attribute__((used)) static int hostapd_broadcast_wep_clear(struct hostapd_data *hapd)
{
 hostapd_broadcast_key_clear_iface(hapd, hapd->conf->iface);
 return 0;
}
