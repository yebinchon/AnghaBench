
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int eloop_register_timeout (unsigned int,unsigned int,int ,struct hostapd_data*,int *) ;
 scalar_t__ get_bss_load_update_timeout (struct hostapd_data*,unsigned int*,unsigned int*) ;
 int update_channel_utilization ;

int bss_load_update_init(struct hostapd_data *hapd)
{
 unsigned int sec, usec;

 if (get_bss_load_update_timeout(hapd, &sec, &usec) < 0)
  return -1;

 eloop_register_timeout(sec, usec, update_channel_utilization, hapd,
          ((void*)0));
 return 0;
}
