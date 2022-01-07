
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int req_ies_len; int resp_ies_len; int beacon_ies_len; int * beacon_ies; int * resp_ies; int * req_ies; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef int u8 ;
struct wpa_driver_ndis_data {int ctx; int bssid; } ;
typedef int data ;
typedef int buf ;
struct TYPE_10__ {unsigned int OffsetRequestIEs; unsigned int OffsetResponseIEs; int RequestIELength; int ResponseIELength; int AvailableResponseFixedIEs; int AvailableRequestFixedIEs; } ;
struct TYPE_9__ {size_t NumberOfItems; int * Bssid; } ;
struct TYPE_8__ {int IELength; int Length; scalar_t__ IEs; int MacAddress; } ;
typedef TYPE_2__ NDIS_WLAN_BSSID_EX ;
typedef int NDIS_802_11_FIXED_IEs ;
typedef TYPE_3__ NDIS_802_11_BSSID_LIST_EX ;
typedef TYPE_4__ NDIS_802_11_ASSOCIATION_INFORMATION ;


 int ETH_ALEN ;
 int EVENT_ASSOCINFO ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int OID_802_11_ASSOCIATION_INFORMATION ;
 int OID_802_11_BSSID_LIST ;
 int ndis_get_oid (struct wpa_driver_ndis_data*,int ,char*,size_t) ;
 int os_free (TYPE_3__*) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 TYPE_3__* os_zalloc (size_t) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static int wpa_driver_ndis_get_associnfo(struct wpa_driver_ndis_data *drv)
{
 char buf[512], *pos;
 NDIS_802_11_ASSOCIATION_INFORMATION *ai;
 int len;
 union wpa_event_data data;
 NDIS_802_11_BSSID_LIST_EX *b;
 size_t blen, i;

 len = ndis_get_oid(drv, OID_802_11_ASSOCIATION_INFORMATION, buf,
      sizeof(buf));
 if (len < 0) {
  wpa_printf(MSG_DEBUG, "NDIS: failed to get association "
      "information");
  return -1;
 }
 if (len > sizeof(buf)) {




  wpa_printf(MSG_DEBUG, "NDIS: ignored bogus association "
      "information length %d", len);
  len = ndis_get_oid(drv, OID_802_11_ASSOCIATION_INFORMATION,
       buf, sizeof(buf));
  if (len < -1) {
   wpa_printf(MSG_DEBUG, "NDIS: re-reading association "
       "information failed");
   return -1;
  }
  if (len > sizeof(buf)) {
   wpa_printf(MSG_DEBUG, "NDIS: ignored bogus association"
       " information length %d (re-read)", len);
   len = sizeof(buf);
  }
 }
 wpa_hexdump(MSG_MSGDUMP, "NDIS: association information",
      (u8 *) buf, len);
 if (len < sizeof(*ai)) {
  wpa_printf(MSG_DEBUG, "NDIS: too short association "
      "information");
  return -1;
 }
 ai = (NDIS_802_11_ASSOCIATION_INFORMATION *) buf;
 wpa_printf(MSG_DEBUG, "NDIS: ReqFixed=0x%x RespFixed=0x%x off_req=%d "
     "off_resp=%d len_req=%d len_resp=%d",
     ai->AvailableRequestFixedIEs, ai->AvailableResponseFixedIEs,
     (int) ai->OffsetRequestIEs, (int) ai->OffsetResponseIEs,
     (int) ai->RequestIELength, (int) ai->ResponseIELength);

 if (ai->OffsetRequestIEs + ai->RequestIELength > (unsigned) len ||
     ai->OffsetResponseIEs + ai->ResponseIELength > (unsigned) len) {
  wpa_printf(MSG_DEBUG, "NDIS: association information - "
      "IE overflow");
  return -1;
 }

 wpa_hexdump(MSG_MSGDUMP, "NDIS: Request IEs",
      (u8 *) buf + ai->OffsetRequestIEs, ai->RequestIELength);
 wpa_hexdump(MSG_MSGDUMP, "NDIS: Response IEs",
      (u8 *) buf + ai->OffsetResponseIEs, ai->ResponseIELength);

 os_memset(&data, 0, sizeof(data));
 data.assoc_info.req_ies = (u8 *) buf + ai->OffsetRequestIEs;
 data.assoc_info.req_ies_len = ai->RequestIELength;
 data.assoc_info.resp_ies = (u8 *) buf + ai->OffsetResponseIEs;
 data.assoc_info.resp_ies_len = ai->ResponseIELength;

 blen = 65535;
 b = os_zalloc(blen);
 if (b == ((void*)0))
  goto skip_scan_results;
 len = ndis_get_oid(drv, OID_802_11_BSSID_LIST, (char *) b, blen);
 if (len < 0) {
  wpa_printf(MSG_DEBUG, "NDIS: failed to get scan results");
  os_free(b);
  b = ((void*)0);
  goto skip_scan_results;
 }
 wpa_printf(MSG_DEBUG, "NDIS: %d BSSID items to process for AssocInfo",
     (unsigned int) b->NumberOfItems);

 pos = (char *) &b->Bssid[0];
 for (i = 0; i < b->NumberOfItems; i++) {
  NDIS_WLAN_BSSID_EX *bss = (NDIS_WLAN_BSSID_EX *) pos;
  if (os_memcmp(drv->bssid, bss->MacAddress, ETH_ALEN) == 0 &&
      bss->IELength > sizeof(NDIS_802_11_FIXED_IEs)) {
   data.assoc_info.beacon_ies =
    ((u8 *) bss->IEs) +
    sizeof(NDIS_802_11_FIXED_IEs);
   data.assoc_info.beacon_ies_len =
    bss->IELength - sizeof(NDIS_802_11_FIXED_IEs);
   wpa_hexdump(MSG_MSGDUMP, "NDIS: Beacon IEs",
        data.assoc_info.beacon_ies,
        data.assoc_info.beacon_ies_len);
   break;
  }
  pos += bss->Length;
  if (pos > (char *) b + blen)
   break;
 }

skip_scan_results:
 wpa_supplicant_event(drv->ctx, EVENT_ASSOCINFO, &data);

 os_free(b);

 return 0;
}
