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
struct eap_tlv_result_tlv {int dummy; } ;
struct eap_tlv_pac_ack_tlv {void* result; void* pac_len; void* pac_type; void* length; void* tlv_type; } ;
struct eap_tlv_hdr {int dummy; } ;

/* Variables and functions */
 int EAP_TLV_PAC_TLV ; 
 int EAP_TLV_RESULT_SUCCESS ; 
 int EAP_TLV_TYPE_MANDATORY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int PAC_TYPE_PAC_ACKNOWLEDGEMENT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (int) ; 
 struct eap_tlv_pac_ack_tlv* FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(void)
{
	struct wpabuf *buf;
	struct eap_tlv_result_tlv *res;
	struct eap_tlv_pac_ack_tlv *ack;

	buf = FUNC2(sizeof(*res) + sizeof(*ack));
	if (buf == NULL)
		return NULL;

	FUNC1(MSG_DEBUG, "EAP-FAST: Add PAC TLV (ack)");
	ack = FUNC3(buf, sizeof(*ack));
	ack->tlv_type = FUNC0(EAP_TLV_PAC_TLV |
				     EAP_TLV_TYPE_MANDATORY);
	ack->length = FUNC0(sizeof(*ack) - sizeof(struct eap_tlv_hdr));
	ack->pac_type = FUNC0(PAC_TYPE_PAC_ACKNOWLEDGEMENT);
	ack->pac_len = FUNC0(2);
	ack->result = FUNC0(EAP_TLV_RESULT_SUCCESS);

	return buf;
}