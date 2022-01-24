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
struct wpabuf {int dummy; } ;
struct pac_tlv_hdr {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int fast_version; scalar_t__ srv_id_len; int /*<<< orphan*/  srv_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int EAP_TLS_FLAGS_START ; 
 int /*<<< orphan*/  EAP_TYPE_FAST ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PAC_TYPE_A_ID ; 
 int /*<<< orphan*/  PHASE1 ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_fast_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm,
					    struct eap_fast_data *data, u8 id)
{
	struct wpabuf *req;

	req = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_FAST,
			    1 + sizeof(struct pac_tlv_hdr) + data->srv_id_len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC3(MSG_ERROR, "EAP-FAST: Failed to allocate memory for"
			   " request");
		FUNC1(data, FAILURE);
		return NULL;
	}

	FUNC4(req, EAP_TLS_FLAGS_START | data->fast_version);

	/* RFC 4851, 4.1.1. Authority ID Data */
	FUNC0(req, PAC_TYPE_A_ID, data->srv_id, data->srv_id_len);

	FUNC1(data, PHASE1);

	return req;
}