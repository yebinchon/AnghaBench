
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; scalar_t__ wpa_auth; } ;
struct TYPE_2__ {int iface; } ;


 int hostapd_set_privacy (struct hostapd_data*,int ) ;
 int hostapd_setup_encryption (int ,struct hostapd_data*) ;

void hostapd_reconfig_encryption(struct hostapd_data *hapd)
{
 if (hapd->wpa_auth)
  return;

 hostapd_set_privacy(hapd, 0);
 hostapd_setup_encryption(hapd->conf->iface, hapd);
}
