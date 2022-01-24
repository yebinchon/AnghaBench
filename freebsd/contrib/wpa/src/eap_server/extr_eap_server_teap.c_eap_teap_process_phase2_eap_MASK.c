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
typedef  int /*<<< orphan*/  u8 ;
struct eap_teap_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_hdr {long code; int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
#define  EAP_CODE_RESPONSE 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TEAP_ERROR_INNER_METHOD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_teap_data*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm,
					struct eap_teap_data *data,
					u8 *in_data, size_t in_len)
{
	struct eap_hdr *hdr;
	size_t len;

	hdr = (struct eap_hdr *) in_data;
	if (in_len < (int) sizeof(*hdr)) {
		FUNC3(MSG_INFO,
			   "EAP-TEAP: Too short Phase 2 EAP frame (len=%lu)",
			   (unsigned long) in_len);
		FUNC2(data, TEAP_ERROR_INNER_METHOD);
		return;
	}
	len = FUNC0(hdr->length);
	if (len > in_len) {
		FUNC3(MSG_INFO,
			   "EAP-TEAP: Length mismatch in Phase 2 EAP frame (len=%lu hdr->length=%lu)",
			   (unsigned long) in_len, (unsigned long) len);
		FUNC2(data, TEAP_ERROR_INNER_METHOD);
		return;
	}
	FUNC3(MSG_DEBUG,
		   "EAP-TEAP: Received Phase 2: code=%d identifier=%d length=%lu",
		   hdr->code, hdr->identifier,
		   (unsigned long) len);
	switch (hdr->code) {
	case EAP_CODE_RESPONSE:
		FUNC1(sm, data, (u8 *) hdr, len);
		break;
	default:
		FUNC3(MSG_INFO,
			   "EAP-TEAP: Unexpected code=%d in Phase 2 EAP header",
			   hdr->code);
		break;
	}
}