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
struct teap_tlv_result {void* status; void* length; void* tlv_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TEAP_STATUS_FAILURE ; 
 int TEAP_STATUS_SUCCESS ; 
 int TEAP_TLV_INTERMEDIATE_RESULT ; 
 int TEAP_TLV_MANDATORY ; 
 int TEAP_TLV_RESULT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 struct wpabuf* FUNC2 (int) ; 
 struct teap_tlv_result* FUNC3 (struct wpabuf*,int) ; 

struct wpabuf * FUNC4(int status, int intermediate)
{
	struct wpabuf *buf;
	struct teap_tlv_result *result;

	if (status != TEAP_STATUS_FAILURE && status != TEAP_STATUS_SUCCESS)
		return NULL;

	buf = FUNC2(sizeof(*result));
	if (!buf)
		return NULL;
	FUNC1(MSG_DEBUG, "EAP-TEAP: Add %sResult TLV(status=%s)",
		   intermediate ? "Intermediate-" : "",
		   status == TEAP_STATUS_SUCCESS ? "Success" : "Failure");
	result = FUNC3(buf, sizeof(*result));
	result->tlv_type = FUNC0(TEAP_TLV_MANDATORY |
					(intermediate ?
					 TEAP_TLV_INTERMEDIATE_RESULT :
					 TEAP_TLV_RESULT));
	result->length = FUNC0(2);
	result->status = FUNC0(status);
	return buf;
}