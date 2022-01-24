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
struct eap_tlv_nak_tlv {void* nak_type; int /*<<< orphan*/  vendor_id; void* length; void* tlv_type; } ;

/* Variables and functions */
 int EAP_TLV_NAK_TLV ; 
 int EAP_TLV_TYPE_MANDATORY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct wpabuf* FUNC2 (int) ; 
 struct eap_tlv_nak_tlv* FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(int vendor_id, int tlv_type)
{
	struct wpabuf *buf;
	struct eap_tlv_nak_tlv *nak;
	buf = FUNC2(sizeof(*nak));
	if (buf == NULL)
		return NULL;
	nak = FUNC3(buf, sizeof(*nak));
	nak->tlv_type = FUNC0(EAP_TLV_TYPE_MANDATORY | EAP_TLV_NAK_TLV);
	nak->length = FUNC0(6);
	nak->vendor_id = FUNC1(vendor_id);
	nak->nak_type = FUNC0(tlv_type);
	return buf;
}