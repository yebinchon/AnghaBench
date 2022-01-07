
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
typedef enum hostapd_chan_status { ____Placeholder_hostapd_chan_status } hostapd_chan_status ;
struct TYPE_2__ {scalar_t__ channel; } ;





 int acs_init (struct hostapd_iface*) ;
 scalar_t__ hostapd_is_usable_chans (struct hostapd_iface*) ;

__attribute__((used)) static enum hostapd_chan_status
hostapd_check_chans(struct hostapd_iface *iface)
{
 if (iface->conf->channel) {
  if (hostapd_is_usable_chans(iface))
   return 128;
  else
   return 129;
 }






 switch (acs_init(iface)) {
 case 130:
  return 130;
 case 128:
 case 129:
 default:
  return 129;
 }
}
