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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int identity_len; TYPE_1__* user; scalar_t__ const* identity; scalar_t__ require_identity_match; } ;
struct eap_gtc_data {void* state; scalar_t__ prefix; } ;
struct TYPE_2__ {size_t password_len; int /*<<< orphan*/ * password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_GTC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* SUCCESS ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,scalar_t__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*) ; 
 scalar_t__ FUNC3 (scalar_t__ const*,scalar_t__ const*,int) ; 
 scalar_t__ FUNC4 (scalar_t__ const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ const* FUNC5 (scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_gtc_data *data = priv;
	const u8 *pos;
	size_t rlen;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_GTC, respData, &rlen);
	if (pos == NULL || rlen < 1)
		return; /* Should not happen - frame already validated */

	FUNC7(MSG_MSGDUMP, "EAP-GTC: Response", pos, rlen);

#ifdef EAP_SERVER_FAST
	if (data->prefix) {
		const u8 *pos2, *end;
		/* "RESPONSE=<user>\0<password>" */
		if (rlen < 10) {
			wpa_printf(MSG_DEBUG, "EAP-GTC: Too short response "
				   "for EAP-FAST prefix");
			data->state = FAILURE;
			return;
		}

		end = pos + rlen;
		pos += 9;
		pos2 = pos;
		while (pos2 < end && *pos2)
			pos2++;
		if (pos2 == end) {
			wpa_printf(MSG_DEBUG, "EAP-GTC: No password in "
				   "response to EAP-FAST prefix");
			data->state = FAILURE;
			return;
		}

		wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-GTC: Response user",
				  pos, pos2 - pos);
		if (sm->identity && sm->require_identity_match &&
		    (pos2 - pos != (int) sm->identity_len ||
		     os_memcmp(pos, sm->identity, sm->identity_len))) {
			wpa_printf(MSG_DEBUG, "EAP-GTC: Phase 2 Identity did "
				   "not match with required Identity");
			wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-GTC: Expected "
					  "identity",
					  sm->identity, sm->identity_len);
			data->state = FAILURE;
			return;
		} else {
			os_free(sm->identity);
			sm->identity_len = pos2 - pos;
			sm->identity = os_memdup(pos, sm->identity_len);
			if (sm->identity == NULL) {
				data->state = FAILURE;
				return;
			}
		}

		if (eap_user_get(sm, sm->identity, sm->identity_len, 1) != 0) {
			wpa_hexdump_ascii(MSG_DEBUG, "EAP-GTC: Phase2 "
					  "Identity not found in the user "
					  "database",
					  sm->identity, sm->identity_len);
			data->state = FAILURE;
			return;
		}

		pos = pos2 + 1;
		rlen = end - pos;
		wpa_hexdump_ascii_key(MSG_MSGDUMP,
				      "EAP-GTC: Response password",
				      pos, rlen);
	}
#endif /* EAP_SERVER_FAST */

	if (sm->user == NULL || sm->user->password == NULL ||
	    sm->user->password_hash) {
		FUNC8(MSG_INFO, "EAP-GTC: Plaintext password not "
			   "configured");
		data->state = FAILURE;
		return;
	}

	if (rlen != sm->user->password_len ||
	    FUNC4(pos, sm->user->password, rlen) != 0) {
		FUNC8(MSG_DEBUG, "EAP-GTC: Done - Failure");
		data->state = FAILURE;
	} else {
		FUNC8(MSG_DEBUG, "EAP-GTC: Done - Success");
		data->state = SUCCESS;
	}
}