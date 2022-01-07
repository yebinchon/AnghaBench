
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int radius; } ;


 int RADIUS_AUTH ;
 int hostapd_acl_recv_radius ;
 scalar_t__ radius_client_register (int ,int ,int ,struct hostapd_data*) ;

int hostapd_acl_init(struct hostapd_data *hapd)
{

 if (radius_client_register(hapd->radius, RADIUS_AUTH,
       hostapd_acl_recv_radius, hapd))
  return -1;


 return 0;
}
