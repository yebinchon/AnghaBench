
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unicast; int * src; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef int u8 ;
typedef void* u32 ;
struct TYPE_4__ {void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;
struct atheros_driver_data {int hapd; TYPE_2__ acct_data; int * acct_mac; } ;
typedef int data ;


 int ETH_ALEN ;
 int EVENT_MICHAEL_MIC_FAILURE ;
 int EVENT_WPS_BUTTON_PUSHED ;
 int MGMT_FRAM_TAG_SIZE ;
 int MSG_DEBUG ;
 int atheros_raw_receive (struct atheros_driver_data*,int *,int *,int) ;
 int atoi (char*) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 char* os_strstr (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 void* strtoul (char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void
atheros_wireless_event_wireless_custom(struct atheros_driver_data *drv,
           char *custom, char *end)
{

 wpa_printf(MSG_DEBUG, "Custom wireless event: '%s'", custom);

 if (os_strncmp(custom, "MLME-MICHAELMICFAILURE.indication", 33) == 0) {
  char *pos;
  u8 addr[ETH_ALEN];
  pos = os_strstr(custom, "addr=");
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
 } else if (strncmp(custom, "STA-TRAFFIC-STAT", 16) == 0) {
  char *key, *value;
  u32 val;
  key = custom;
  while ((key = os_strchr(key, '\n')) != ((void*)0)) {
   key++;
   value = os_strchr(key, '=');
   if (value == ((void*)0))
    continue;
   *value++ = '\0';
   val = strtoul(value, ((void*)0), 10);
   if (os_strcmp(key, "mac") == 0)
    hwaddr_aton(value, drv->acct_mac);
   else if (os_strcmp(key, "rx_packets") == 0)
    drv->acct_data.rx_packets = val;
   else if (os_strcmp(key, "tx_packets") == 0)
    drv->acct_data.tx_packets = val;
   else if (os_strcmp(key, "rx_bytes") == 0)
    drv->acct_data.rx_bytes = val;
   else if (os_strcmp(key, "tx_bytes") == 0)
    drv->acct_data.tx_bytes = val;
   key = value;
  }
 }
}
