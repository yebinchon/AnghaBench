
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int eloop_cancel_timeout (int ,struct hostapd_iface*,int *) ;
 int update_airtime_weights ;

void airtime_policy_update_deinit(struct hostapd_iface *iface)
{
 eloop_cancel_timeout(update_airtime_weights, iface, ((void*)0));
}
