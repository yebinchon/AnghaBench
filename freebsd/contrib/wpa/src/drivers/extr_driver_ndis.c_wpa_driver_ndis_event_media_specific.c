
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef int status ;
struct TYPE_2__ {int StatusType; } ;
typedef TYPE_1__ NDIS_802_11_STATUS_INDICATION ;


 int MSG_DEBUG ;


 int wpa_driver_ndis_event_auth (struct wpa_driver_ndis_data*,int const*,size_t) ;
 int wpa_driver_ndis_event_pmkid (struct wpa_driver_ndis_data*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,int) ;

void wpa_driver_ndis_event_media_specific(struct wpa_driver_ndis_data *drv,
       const u8 *data, size_t data_len)
{
 NDIS_802_11_STATUS_INDICATION *status;

 if (data == ((void*)0) || data_len < sizeof(*status))
  return;

 wpa_hexdump(MSG_DEBUG, "NDIS: Media Specific Indication",
      data, data_len);

 status = (NDIS_802_11_STATUS_INDICATION *) data;
 data += sizeof(status);
 data_len -= sizeof(status);

 switch (status->StatusType) {
 case 129:
  wpa_driver_ndis_event_auth(drv, data, data_len);
  break;
 case 128:
  wpa_driver_ndis_event_pmkid(drv, data, data_len);
  break;
 default:
  wpa_printf(MSG_DEBUG, "NDIS: Unknown StatusType %d",
      (int) status->StatusType);
  break;
 }
}
