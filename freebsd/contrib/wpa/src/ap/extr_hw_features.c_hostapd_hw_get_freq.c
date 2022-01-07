
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int current_mode; } ;


 int hw_get_freq (int ,int) ;

int hostapd_hw_get_freq(struct hostapd_data *hapd, int chan)
{
 return hw_get_freq(hapd->iface->current_mode, chan);
}
