
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int update_channel_utilization ;

void bss_load_update_deinit(struct hostapd_data *hapd)
{
 eloop_cancel_timeout(update_channel_utilization, hapd, ((void*)0));
}
