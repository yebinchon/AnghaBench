
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {struct hostapd_radius_servers* conf; } ;
struct hostapd_radius_servers {int dummy; } ;



void radius_client_reconfig(struct radius_client_data *radius,
       struct hostapd_radius_servers *conf)
{
 if (radius)
  radius->conf = conf;
}
