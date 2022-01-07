
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unicast; int * src; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef int u8 ;
struct hostap_driver_data {int hapd; } ;
typedef int data ;


 int ETH_ALEN ;
 int EVENT_MICHAEL_MIC_FAILURE ;
 int MSG_DEBUG ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void
hostapd_wireless_event_wireless_custom(struct hostap_driver_data *drv,
           char *custom)
{
 wpa_printf(MSG_DEBUG, "Custom wireless event: '%s'", custom);

 if (strncmp(custom, "MLME-MICHAELMICFAILURE.indication", 33) == 0) {
  char *pos;
  u8 addr[ETH_ALEN];
  pos = strstr(custom, "addr=");
  if (pos == ((void*)0)) {
   wpa_printf(MSG_DEBUG,
       "MLME-MICHAELMICFAILURE.indication "
       "without sender address ignored");
   return;
  }
  pos += 5;
  if (hwaddr_aton(pos, addr) == 0) {
   union wpa_event_data data;
   os_memset(&data, 0, sizeof(data));
   data.michael_mic_failure.unicast = 1;
   data.michael_mic_failure.src = addr;
   wpa_supplicant_event(drv->hapd,
          EVENT_MICHAEL_MIC_FAILURE, &data);
  } else {
   wpa_printf(MSG_DEBUG,
       "MLME-MICHAELMICFAILURE.indication "
       "with invalid MAC address");
  }
 }
}
