
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ airtime_mode; } ;


 scalar_t__ AIRTIME_MODE_DYNAMIC ;
 int eloop_register_timeout (unsigned int,unsigned int,int ,struct hostapd_iface*,int *) ;
 scalar_t__ get_airtime_policy_update_timeout (struct hostapd_iface*,unsigned int*,unsigned int*) ;
 int update_airtime_weights ;

int airtime_policy_update_init(struct hostapd_iface *iface)
{
 unsigned int sec, usec;

 if (iface->conf->airtime_mode < AIRTIME_MODE_DYNAMIC)
  return 0;

 if (get_airtime_policy_update_timeout(iface, &sec, &usec) < 0)
  return -1;

 eloop_register_timeout(sec, usec, update_airtime_weights, iface, ((void*)0));
 return 0;
}
