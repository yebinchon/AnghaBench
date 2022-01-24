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
struct wpabuf {int dummy; } ;
struct teap_tlv_nak {void* nak_type; int /*<<< orphan*/  vendor_id; void* length; void* tlv_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TEAP_TLV_MANDATORY ; 
 int TEAP_TLV_NAK ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct wpabuf* FUNC3 (int) ; 
 struct teap_tlv_nak* FUNC4 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC5(int vendor_id, int tlv_type)
{
	struct wpabuf *buf;
	struct teap_tlv_nak *nak;

	FUNC2(MSG_DEBUG,
		   "EAP-TEAP: Add NAK TLV (Vendor-Id %u NAK-Type %u)",
		   vendor_id, tlv_type);
	buf = FUNC3(sizeof(*nak));
	if (!buf)
		return NULL;
	nak = FUNC4(buf, sizeof(*nak));
	nak->tlv_type = FUNC0(TEAP_TLV_MANDATORY | TEAP_TLV_NAK);
	nak->length = FUNC0(6);
	nak->vendor_id = FUNC1(vendor_id);
	nak->nak_type = FUNC0(tlv_type);
	return buf;
}