
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct wpa_bss {int caps; int beacon_int; int tsf; } ;
struct rrm_measurement_report_element {int dummy; } ;
struct rrm_measurement_beacon_report {int dummy; } ;
struct bitfield {int dummy; } ;
typedef enum beacon_report_detail { ____Placeholder_beacon_report_detail } beacon_report_detail ;


 int BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS ;
 int BEACON_REPORT_DETAIL_NONE ;
 int MSG_DEBUG ;
 int REPORTED_FRAME_BODY_SUBELEM_LEN ;
 int WLAN_BEACON_REPORT_SUBELEM_FRAME_BODY ;
 int WPA_PUT_LE16 (unsigned int*,int ) ;
 int WPA_PUT_LE64 (unsigned int*,int ) ;
 scalar_t__ bitfield_is_set (struct bitfield*,unsigned int) ;
 int os_memcpy (unsigned int*,unsigned int*,unsigned int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int wpas_beacon_rep_add_frame_body(struct bitfield *eids,
       enum beacon_report_detail detail,
       struct wpa_bss *bss, u8 *buf,
       size_t buf_len, u8 **ies_buf,
       size_t *ie_len, int add_fixed)
{
 u8 *ies = *ies_buf;
 size_t ies_len = *ie_len;
 u8 *pos = buf;
 int rem_len;

 rem_len = 255 - sizeof(struct rrm_measurement_beacon_report) -
  sizeof(struct rrm_measurement_report_element) - 2 -
  REPORTED_FRAME_BODY_SUBELEM_LEN;

 if (detail > BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS) {
  wpa_printf(MSG_DEBUG,
      "Beacon Request: Invalid reporting detail: %d",
      detail);
  return -1;
 }

 if (detail == BEACON_REPORT_DETAIL_NONE)
  return 0;





 if (add_fixed && buf_len < 14)
  return -1;

 *pos++ = WLAN_BEACON_REPORT_SUBELEM_FRAME_BODY;

 pos++;

 if (add_fixed) {
  WPA_PUT_LE64(pos, bss->tsf);
  pos += sizeof(bss->tsf);
  WPA_PUT_LE16(pos, bss->beacon_int);
  pos += 2;
  WPA_PUT_LE16(pos, bss->caps);
  pos += 2;
 }

 rem_len -= pos - buf;
 while (ies_len > 2 && 2U + ies[1] <= ies_len && rem_len > 0) {
  if (detail == BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS ||
      (eids && bitfield_is_set(eids, ies[0]))) {
   u8 elen = ies[1];

   if (2 + elen > buf + buf_len - pos ||
       2 + elen > rem_len)
    break;

   *pos++ = ies[0];
   *pos++ = elen;
   os_memcpy(pos, ies + 2, elen);
   pos += elen;
   rem_len -= 2 + elen;
  }

  ies_len -= 2 + ies[1];
  ies += 2 + ies[1];
 }

 *ie_len = ies_len;
 *ies_buf = ies;


 buf[1] = pos - buf - 2;
 return pos - buf;
}
