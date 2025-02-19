
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct beacon_rep_data {int ssid_len; int report_detail; int last_indication; int eids; int ssid; } ;


 int BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS ;
 int BEACON_REPORT_DETAIL_REQUESTED_ONLY ;
 int MSG_DEBUG ;
 int SSID_MAX_LEN ;






 int bitfield_alloc (int) ;
 int bitfield_set (int ,int const) ;
 int os_memcpy (int ,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpas_rm_handle_beacon_req_subelem(struct wpa_supplicant *wpa_s,
          struct beacon_rep_data *data,
          u8 sid, u8 slen, const u8 *subelem)
{
 u8 report_info, i;

 switch (sid) {
 case 128:
  if (!slen) {
   wpa_printf(MSG_DEBUG,
       "SSID subelement with zero length - wildcard SSID");
   break;
  }

  if (slen > SSID_MAX_LEN) {
   wpa_printf(MSG_DEBUG,
       "Invalid SSID subelement length: %u", slen);
   return -1;
  }

  data->ssid_len = slen;
  os_memcpy(data->ssid, subelem, data->ssid_len);
  break;
 case 131:
  if (slen != 2) {
   wpa_printf(MSG_DEBUG,
       "Invalid reporting information subelement length: %u",
       slen);
   return -1;
  }

  report_info = subelem[0];
  if (report_info != 0) {
   wpa_printf(MSG_DEBUG,
       "reporting information=%u is not supported",
       report_info);
   return 0;
  }
  break;
 case 132:
  if (slen != 1) {
   wpa_printf(MSG_DEBUG,
       "Invalid reporting detail subelement length: %u",
       slen);
   return -1;
  }

  data->report_detail = subelem[0];
  if (data->report_detail >
      BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS) {
   wpa_printf(MSG_DEBUG, "Invalid reporting detail: %u",
       subelem[0]);
   return -1;
  }

  break;
 case 129:
  if (data->report_detail !=
      BEACON_REPORT_DETAIL_REQUESTED_ONLY) {
   wpa_printf(MSG_DEBUG,
       "Beacon request: request subelement is present but report detail is %u",
       data->report_detail);
   return -1;
  }

  if (!slen) {
   wpa_printf(MSG_DEBUG,
       "Invalid request subelement length: %u",
       slen);
   return -1;
  }

  if (data->eids) {
   wpa_printf(MSG_DEBUG,
       "Beacon Request: Request subelement appears more than once");
   return -1;
  }

  data->eids = bitfield_alloc(255);
  if (!data->eids) {
   wpa_printf(MSG_DEBUG, "Failed to allocate EIDs bitmap");
   return -1;
  }

  for (i = 0; i < slen; i++)
   bitfield_set(data->eids, subelem[i]);
  break;
 case 133:

  break;
 case 130:
  if (slen != 1) {
   wpa_printf(MSG_DEBUG,
       "Beacon request: Invalid last indication request subelement length: %u",
       slen);
   return -1;
  }

  data->last_indication = subelem[0];
  break;
 default:
  wpa_printf(MSG_DEBUG,
      "Beacon request: Unknown subelement id %u", sid);
  break;
 }

 return 1;
}
