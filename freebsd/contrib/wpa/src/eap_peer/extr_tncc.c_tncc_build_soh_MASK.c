#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char u8 ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  correlation_id ;

/* Variables and functions */
 int EAP_TLV_VENDOR_SPECIFIC_TLV ; 
 int EAP_VENDOR_MICROSOFT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SSOH_MS_CORRELATIONID ; 
 int SSOH_MS_MACHINENAME ; 
 int SSOH_MS_MACHINE_INVENTORY ; 
 int SSOH_MS_MACHINE_INVENTORY_EX ; 
 int SSOH_MS_PACKET_INFO ; 
 int SSOH_MS_QUARANTINE_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 struct wpabuf* FUNC4 (int) ; 
 char* FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC10(int ver)
{
	struct wpabuf *buf;
	u8 *tlv_len, *tlv_len2, *outer_len, *inner_len, *ssoh_len, *end;
	u8 correlation_id[24];
	/* TODO: get correct name */
	char *machinename = "wpa_supplicant@w1.fi";

	if (FUNC1(correlation_id, sizeof(correlation_id)))
		return NULL;
	FUNC3(MSG_DEBUG, "TNC: SoH Correlation ID",
		    correlation_id, sizeof(correlation_id));

	buf = FUNC4(200);
	if (buf == NULL)
		return NULL;

	/* Vendor-Specific TLV (Microsoft) - SoH */
	FUNC6(buf, EAP_TLV_VENDOR_SPECIFIC_TLV); /* TLV Type */
	tlv_len = FUNC5(buf, 2); /* Length */
	FUNC7(buf, EAP_VENDOR_MICROSOFT); /* Vendor_Id */
	FUNC6(buf, 0x01); /* TLV Type - SoH TLV */
	tlv_len2 = FUNC5(buf, 2); /* Length */

	/* SoH Header */
	FUNC6(buf, EAP_TLV_VENDOR_SPECIFIC_TLV); /* Outer Type */
	outer_len = FUNC5(buf, 2);
	FUNC7(buf, EAP_VENDOR_MICROSOFT); /* IANA SMI Code */
	FUNC6(buf, ver); /* Inner Type */
	inner_len = FUNC5(buf, 2);

	if (ver == 2) {
		/* SoH Mode Sub-Header */
		/* Outer Type */
		FUNC6(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
		FUNC6(buf, 4 + 24 + 1 + 1); /* Length */
		FUNC7(buf, EAP_VENDOR_MICROSOFT); /* IANA SMI Code */
		/* Value: */
		FUNC8(buf, correlation_id, sizeof(correlation_id));
		FUNC9(buf, 0x01); /* Intent Flag - Request */
		FUNC9(buf, 0x00); /* Content-Type Flag */
	}

	/* SSoH TLV */
	/* System-Health-Id */
	FUNC6(buf, 0x0002); /* Type */
	FUNC6(buf, 4); /* Length */
	FUNC7(buf, 79616);
	/* Vendor-Specific Attribute */
	FUNC6(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
	ssoh_len = FUNC5(buf, 2);
	FUNC7(buf, EAP_VENDOR_MICROSOFT); /* IANA SMI Code */

	/* MS-Packet-Info */
	FUNC9(buf, SSOH_MS_PACKET_INFO);
	/* Note: IF-TNCCS-SOH v1.0 r8 claims this field to be:
	 * Reserved(4 bits) r(1 bit) Vers(3 bits), but Windows XP
	 * SP3 seems to be sending 0x11 for SSoH, i.e., r(request/response) bit
	 * would not be in the specified location.
	 * [MS-SOH] 4.0.2: Reserved(3 bits) r(1 bit) Vers(4 bits)
	 */
	FUNC9(buf, 0x11); /* r=request, vers=1 */

	/* MS-Machine-Inventory */
	/* TODO: get correct values; 0 = not applicable for OS */
	FUNC9(buf, SSOH_MS_MACHINE_INVENTORY);
	FUNC7(buf, 0); /* osVersionMajor */
	FUNC7(buf, 0); /* osVersionMinor */
	FUNC7(buf, 0); /* osVersionBuild */
	FUNC6(buf, 0); /* spVersionMajor */
	FUNC6(buf, 0); /* spVersionMinor */
	FUNC6(buf, 0); /* procArch */

	/* MS-MachineName */
	FUNC9(buf, SSOH_MS_MACHINENAME);
	FUNC6(buf, FUNC2(machinename) + 1);
	FUNC8(buf, machinename, FUNC2(machinename) + 1);

	/* MS-CorrelationId */
	FUNC9(buf, SSOH_MS_CORRELATIONID);
	FUNC8(buf, correlation_id, sizeof(correlation_id));

	/* MS-Quarantine-State */
	FUNC9(buf, SSOH_MS_QUARANTINE_STATE);
	FUNC6(buf, 1); /* Flags: ExtState=0, f=0, qState=1 */
	FUNC7(buf, 0xffffffff); /* ProbTime (hi) */
	FUNC7(buf, 0xffffffff); /* ProbTime (lo) */
	FUNC6(buf, 1); /* urlLenInBytes */
	FUNC9(buf, 0); /* null termination for the url */

	/* MS-Machine-Inventory-Ex */
	FUNC9(buf, SSOH_MS_MACHINE_INVENTORY_EX);
	FUNC7(buf, 0); /* Reserved
				  * (note: Windows XP SP3 uses 0xdecafbad) */
	FUNC9(buf, 1); /* ProductType: Client */

	/* Update SSoH Length */
	end = FUNC5(buf, 0);
	FUNC0(ssoh_len, end - ssoh_len - 2);

	/* TODO: SoHReportEntry TLV (zero or more) */

	/* Update length fields */
	end = FUNC5(buf, 0);
	FUNC0(tlv_len, end - tlv_len - 2);
	FUNC0(tlv_len2, end - tlv_len2 - 2);
	FUNC0(outer_len, end - outer_len - 2);
	FUNC0(inner_len, end - inner_len - 2);

	return buf;
}