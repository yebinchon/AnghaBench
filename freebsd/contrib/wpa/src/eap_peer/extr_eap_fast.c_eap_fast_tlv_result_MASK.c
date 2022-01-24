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
struct eap_tlv_intermediate_result_tlv {void* status; void* length; void* tlv_type; } ;

/* Variables and functions */
 int EAP_TLV_INTERMEDIATE_RESULT_TLV ; 
 int EAP_TLV_RESULT_TLV ; 
 int EAP_TLV_TYPE_MANDATORY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 struct wpabuf* FUNC2 (int) ; 
 struct eap_tlv_intermediate_result_tlv* FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(int status, int intermediate)
{
	struct wpabuf *buf;
	struct eap_tlv_intermediate_result_tlv *result;
	buf = FUNC2(sizeof(*result));
	if (buf == NULL)
		return NULL;
	FUNC1(MSG_DEBUG, "EAP-FAST: Add %sResult TLV(status=%d)",
		   intermediate ? "Intermediate " : "", status);
	result = FUNC3(buf, sizeof(*result));
	result->tlv_type = FUNC0(EAP_TLV_TYPE_MANDATORY |
					(intermediate ?
					 EAP_TLV_INTERMEDIATE_RESULT_TLV :
					 EAP_TLV_RESULT_TLV));
	result->length = FUNC0(2);
	result->status = FUNC0(status);
	return buf;
}