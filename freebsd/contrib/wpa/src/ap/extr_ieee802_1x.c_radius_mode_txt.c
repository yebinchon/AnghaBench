
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {TYPE_2__* iface; } ;
struct TYPE_4__ {TYPE_1__* conf; } ;
struct TYPE_3__ {int hw_mode; } ;







const char *radius_mode_txt(struct hostapd_data *hapd)
{
 switch (hapd->iface->conf->hw_mode) {
 case 130:
  return "802.11ad";
 case 131:
  return "802.11a";
 case 128:
  return "802.11g";
 case 129:
 default:
  return "802.11b";
 }
}
