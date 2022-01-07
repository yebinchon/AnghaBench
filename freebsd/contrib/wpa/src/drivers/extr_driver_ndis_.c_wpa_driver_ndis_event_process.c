
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef enum event_types { ____Placeholder_event_types } event_types ;







 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int wpa_driver_ndis_event_adapter_arrival (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_event_adapter_removal (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_event_connect (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_event_disconnect (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_event_media_specific (struct wpa_driver_ndis_data*,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wpa_driver_ndis_event_process(struct wpa_driver_ndis_data *drv,
       u8 *buf, size_t len)
{
 u8 *pos, *data = ((void*)0);
 enum event_types type;
 size_t data_len = 0;

 wpa_hexdump(MSG_MSGDUMP, "NDIS: received event data", buf, len);
 if (len < sizeof(int))
  return;
 type = *((int *) buf);
 pos = buf + sizeof(int);
 wpa_printf(MSG_DEBUG, "NDIS: event - type %d", type);

 if (buf + len - pos > 2) {
  data_len = (int) *pos++ << 8;
  data_len += *pos++;
  if (data_len > (size_t) (buf + len - pos)) {
   wpa_printf(MSG_DEBUG, "NDIS: event data overflow");
   return;
  }
  data = pos;
  wpa_hexdump(MSG_MSGDUMP, "NDIS: event data", data, data_len);
 }

 switch (type) {
 case 130:
  wpa_driver_ndis_event_connect(drv);
  break;
 case 129:
  wpa_driver_ndis_event_disconnect(drv);
  break;
 case 128:
  wpa_driver_ndis_event_media_specific(drv, data, data_len);
  break;
 case 132:
  wpa_driver_ndis_event_adapter_arrival(drv);
  break;
 case 131:
  wpa_driver_ndis_event_adapter_removal(drv);
  break;
 }
}
