
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {scalar_t__ ap_pin_failures_consecutive; int ap_pin_failures; int * wps; TYPE_1__* conf; } ;
struct TYPE_2__ {int * ap_pin; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ,scalar_t__) ;

__attribute__((used)) static int wps_ap_pin_success(struct hostapd_data *hapd, void *ctx)
{
 if (hapd->conf->ap_pin == ((void*)0) || hapd->wps == ((void*)0))
  return 0;

 if (hapd->ap_pin_failures_consecutive == 0)
  return 0;

 wpa_printf(MSG_DEBUG, "WPS: Clear consecutive AP PIN failure counter "
     "- total validation failures %u (%u consecutive)",
     hapd->ap_pin_failures, hapd->ap_pin_failures_consecutive);
 hapd->ap_pin_failures_consecutive = 0;

 return 0;
}
