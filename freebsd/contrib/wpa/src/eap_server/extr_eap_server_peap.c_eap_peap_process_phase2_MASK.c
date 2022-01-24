#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct wpabuf const wpabuf ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_peap_data {scalar_t__ peap_version; scalar_t__ state; TYPE_1__ ssl; struct wpabuf const* pending_phase2_resp; } ;
struct eap_hdr {long code; int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
#define  EAP_CODE_FAILURE 130 
#define  EAP_CODE_RESPONSE 129 
#define  EAP_CODE_SUCCESS 128 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ PHASE2_TLV ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ SUCCESS_REQ ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_peap_data*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_peap_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_peap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_peap_data*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 struct wpabuf const* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf const* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*) ; 
 struct eap_hdr* FUNC11 (struct wpabuf const*) ; 
 size_t FUNC12 (struct wpabuf const*) ; 
 struct eap_hdr* FUNC13 (struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf const*,struct wpabuf const*) ; 

__attribute__((used)) static void FUNC15(struct eap_sm *sm,
				    struct eap_peap_data *data,
				    const struct wpabuf *respData,
				    struct wpabuf *in_buf)
{
	struct wpabuf *in_decrypted;
	const struct eap_hdr *hdr;
	size_t len;

	FUNC8(MSG_DEBUG, "EAP-PEAP: received %lu bytes encrypted data for"
		   " Phase 2", (unsigned long) FUNC12(in_buf));

	if (data->pending_phase2_resp) {
		FUNC8(MSG_DEBUG, "EAP-PEAP: Pending Phase 2 response - "
			   "skip decryption and use old data");
		FUNC1(sm, data,
						 data->pending_phase2_resp);
		FUNC10(data->pending_phase2_resp);
		data->pending_phase2_resp = NULL;
		return;
	}

	in_decrypted = FUNC6(sm->ssl_ctx, data->ssl.conn,
					      in_buf);
	if (in_decrypted == NULL) {
		FUNC8(MSG_INFO, "EAP-PEAP: Failed to decrypt Phase 2 "
			   "data");
		FUNC3(data, FAILURE);
		return;
	}

	FUNC7(MSG_DEBUG, "EAP-PEAP: Decrypted Phase 2 EAP",
			    in_decrypted);

	if (data->peap_version == 0 && data->state != PHASE2_TLV) {
		const struct eap_hdr *resp;
		struct eap_hdr *nhdr;
		struct wpabuf *nbuf =
			FUNC9(sizeof(struct eap_hdr) +
				     FUNC12(in_decrypted));
		if (nbuf == NULL) {
			FUNC10(in_decrypted);
			return;
		}

		resp = FUNC11(respData);
		nhdr = FUNC13(nbuf, sizeof(*nhdr));
		nhdr->code = resp->code;
		nhdr->identifier = resp->identifier;
		nhdr->length = FUNC5(sizeof(struct eap_hdr) +
					    FUNC12(in_decrypted));
		FUNC14(nbuf, in_decrypted);
		FUNC10(in_decrypted);

		in_decrypted = nbuf;
	}

	hdr = FUNC11(in_decrypted);
	if (FUNC12(in_decrypted) < (int) sizeof(*hdr)) {
		FUNC8(MSG_INFO, "EAP-PEAP: Too short Phase 2 "
			   "EAP frame (len=%lu)",
			   (unsigned long) FUNC12(in_decrypted));
		FUNC10(in_decrypted);
		FUNC2(sm, data);
		return;
	}
	len = FUNC0(hdr->length);
	if (len > FUNC12(in_decrypted)) {
		FUNC8(MSG_INFO, "EAP-PEAP: Length mismatch in "
			   "Phase 2 EAP frame (len=%lu hdr->length=%lu)",
			   (unsigned long) FUNC12(in_decrypted),
			   (unsigned long) len);
		FUNC10(in_decrypted);
		FUNC2(sm, data);
		return;
	}
	FUNC8(MSG_DEBUG, "EAP-PEAP: received Phase 2: code=%d "
		   "identifier=%d length=%lu", hdr->code, hdr->identifier,
		   (unsigned long) len);
	switch (hdr->code) {
	case EAP_CODE_RESPONSE:
		FUNC1(sm, data, in_decrypted);
		break;
	case EAP_CODE_SUCCESS:
		FUNC8(MSG_DEBUG, "EAP-PEAP: Phase 2 Success");
		if (data->state == SUCCESS_REQ) {
			FUNC3(data, SUCCESS);
			FUNC4(sm, data);
		}
		break;
	case EAP_CODE_FAILURE:
		FUNC8(MSG_DEBUG, "EAP-PEAP: Phase 2 Failure");
		FUNC3(data, FAILURE);
		break;
	default:
		FUNC8(MSG_INFO, "EAP-PEAP: Unexpected code=%d in "
			   "Phase 2 EAP header", hdr->code);
		break;
	}

	FUNC10(in_decrypted);
}