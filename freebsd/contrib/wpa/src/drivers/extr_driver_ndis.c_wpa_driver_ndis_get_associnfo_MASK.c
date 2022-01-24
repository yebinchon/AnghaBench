#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int req_ies_len; int resp_ies_len; int beacon_ies_len; int /*<<< orphan*/ * beacon_ies; int /*<<< orphan*/ * resp_ies; int /*<<< orphan*/ * req_ies; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {int /*<<< orphan*/  ctx; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {unsigned int OffsetRequestIEs; unsigned int OffsetResponseIEs; int RequestIELength; int ResponseIELength; int /*<<< orphan*/  AvailableResponseFixedIEs; int /*<<< orphan*/  AvailableRequestFixedIEs; } ;
struct TYPE_9__ {size_t NumberOfItems; int /*<<< orphan*/ * Bssid; } ;
struct TYPE_8__ {int IELength; int /*<<< orphan*/  Length; scalar_t__ IEs; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_2__ NDIS_WLAN_BSSID_EX ;
typedef  int /*<<< orphan*/  NDIS_802_11_FIXED_IEs ;
typedef  TYPE_3__ NDIS_802_11_BSSID_LIST_EX ;
typedef  TYPE_4__ NDIS_802_11_ASSOCIATION_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_ASSOCINFO ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  OID_802_11_ASSOCIATION_INFORMATION ; 
 int /*<<< orphan*/  OID_802_11_BSSID_LIST ; 
 int FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static int FUNC8(struct wpa_driver_ndis_data *drv)
{
	char buf[512], *pos;
	NDIS_802_11_ASSOCIATION_INFORMATION *ai;
	int len;
	union wpa_event_data data;
	NDIS_802_11_BSSID_LIST_EX *b;
	size_t blen, i;

	len = FUNC0(drv, OID_802_11_ASSOCIATION_INFORMATION, buf,
			   sizeof(buf));
	if (len < 0) {
		FUNC6(MSG_DEBUG, "NDIS: failed to get association "
			   "information");
		return -1;
	}
	if (len > sizeof(buf)) {
		/* Some drivers seem to be producing incorrect length for this
		 * data. Limit the length to the current buffer size to avoid
		 * crashing in hexdump. The data seems to be otherwise valid,
		 * so better try to use it. */
		FUNC6(MSG_DEBUG, "NDIS: ignored bogus association "
			   "information length %d", len);
		len = FUNC0(drv, OID_802_11_ASSOCIATION_INFORMATION,
				   buf, sizeof(buf));
		if (len < -1) {
			FUNC6(MSG_DEBUG, "NDIS: re-reading association "
				   "information failed");
			return -1;
		}
		if (len > sizeof(buf)) {
			FUNC6(MSG_DEBUG, "NDIS: ignored bogus association"
				   " information length %d (re-read)", len);
			len = sizeof(buf);
		}
	}
	FUNC5(MSG_MSGDUMP, "NDIS: association information",
		    (u8 *) buf, len);
	if (len < sizeof(*ai)) {
		FUNC6(MSG_DEBUG, "NDIS: too short association "
			   "information");
		return -1;
	}
	ai = (NDIS_802_11_ASSOCIATION_INFORMATION *) buf;
	FUNC6(MSG_DEBUG, "NDIS: ReqFixed=0x%x RespFixed=0x%x off_req=%d "
		   "off_resp=%d len_req=%d len_resp=%d",
		   ai->AvailableRequestFixedIEs, ai->AvailableResponseFixedIEs,
		   (int) ai->OffsetRequestIEs, (int) ai->OffsetResponseIEs,
		   (int) ai->RequestIELength, (int) ai->ResponseIELength);

	if (ai->OffsetRequestIEs + ai->RequestIELength > (unsigned) len ||
	    ai->OffsetResponseIEs + ai->ResponseIELength > (unsigned) len) {
		FUNC6(MSG_DEBUG, "NDIS: association information - "
			   "IE overflow");
		return -1;
	}

	FUNC5(MSG_MSGDUMP, "NDIS: Request IEs",
		    (u8 *) buf + ai->OffsetRequestIEs, ai->RequestIELength);
	FUNC5(MSG_MSGDUMP, "NDIS: Response IEs",
		    (u8 *) buf + ai->OffsetResponseIEs, ai->ResponseIELength);

	FUNC3(&data, 0, sizeof(data));
	data.assoc_info.req_ies = (u8 *) buf + ai->OffsetRequestIEs;
	data.assoc_info.req_ies_len = ai->RequestIELength;
	data.assoc_info.resp_ies = (u8 *) buf + ai->OffsetResponseIEs;
	data.assoc_info.resp_ies_len = ai->ResponseIELength;

	blen = 65535;
	b = FUNC4(blen);
	if (b == NULL)
		goto skip_scan_results;
	len = FUNC0(drv, OID_802_11_BSSID_LIST, (char *) b, blen);
	if (len < 0) {
		FUNC6(MSG_DEBUG, "NDIS: failed to get scan results");
		FUNC1(b);
		b = NULL;
		goto skip_scan_results;
	}
	FUNC6(MSG_DEBUG, "NDIS: %d BSSID items to process for AssocInfo",
		   (unsigned int) b->NumberOfItems);

	pos = (char *) &b->Bssid[0];
	for (i = 0; i < b->NumberOfItems; i++) {
		NDIS_WLAN_BSSID_EX *bss = (NDIS_WLAN_BSSID_EX *) pos;
		if (FUNC2(drv->bssid, bss->MacAddress, ETH_ALEN) == 0 &&
		    bss->IELength > sizeof(NDIS_802_11_FIXED_IEs)) {
			data.assoc_info.beacon_ies =
				((u8 *) bss->IEs) +
				sizeof(NDIS_802_11_FIXED_IEs);
			data.assoc_info.beacon_ies_len =
				bss->IELength - sizeof(NDIS_802_11_FIXED_IEs);
			FUNC5(MSG_MSGDUMP, "NDIS: Beacon IEs",
				    data.assoc_info.beacon_ies,
				    data.assoc_info.beacon_ies_len);
			break;
		}
		pos += bss->Length;
		if (pos > (char *) b + blen)
			break;
	}

skip_scan_results:
	FUNC7(drv->ctx, EVENT_ASSOCINFO, &data);

	FUNC1(b);

	return 0;
}