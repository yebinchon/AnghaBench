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
typedef  struct wpabuf const wpabuf ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int dummy; } ;
struct eap_fast_data {int /*<<< orphan*/  ssl; int /*<<< orphan*/  fast_version; struct wpabuf const* pending_phase2_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_FAST ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,int /*<<< orphan*/ ,struct wpabuf const*,struct wpabuf const**) ; 
 int FUNC1 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf const*,struct wpabuf const**) ; 
 int FUNC2 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wpabuf const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int FUNC7 (struct wpabuf const*) ; 

__attribute__((used)) static int FUNC8(struct eap_sm *sm, struct eap_fast_data *data,
			    struct eap_method_ret *ret, u8 identifier,
			    const struct wpabuf *in_data,
			    struct wpabuf **out_data)
{
	struct wpabuf *in_decrypted;
	int res;

	FUNC5(MSG_DEBUG, "EAP-FAST: Received %lu bytes encrypted data for"
		   " Phase 2", (unsigned long) FUNC7(in_data));

	if (data->pending_phase2_req) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Pending Phase 2 request - "
			   "skip decryption and use old data");
		/* Clear TLS reassembly state. */
		FUNC3(&data->ssl);

		in_decrypted = data->pending_phase2_req;
		data->pending_phase2_req = NULL;
		goto continue_req;
	}

	if (FUNC7(in_data) == 0) {
		/* Received TLS ACK - requesting more fragments */
		return FUNC2(sm, &data->ssl, EAP_TYPE_FAST,
					    data->fast_version,
					    identifier, NULL, out_data);
	}

	res = FUNC1(sm, &data->ssl, in_data, &in_decrypted);
	if (res)
		return res;

continue_req:
	FUNC4(MSG_MSGDUMP, "EAP-FAST: Decrypted Phase 2 TLV(s)",
			in_decrypted);

	if (FUNC7(in_decrypted) < 4) {
		FUNC5(MSG_INFO, "EAP-FAST: Too short Phase 2 "
			   "TLV frame (len=%lu)",
			   (unsigned long) FUNC7(in_decrypted));
		FUNC6(in_decrypted);
		return -1;
	}

	res = FUNC0(sm, data, ret, identifier,
					 in_decrypted, out_data);

	FUNC6(in_decrypted);

	return res;
}