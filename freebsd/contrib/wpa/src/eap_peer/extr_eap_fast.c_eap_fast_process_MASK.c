#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; scalar_t__ waiting_ext_cert_check; } ;
struct eap_peer_config {scalar_t__ pending_ext_cert_check; } ;
struct eap_method_ret {void* decision; void* methodState; } ;
struct eap_hdr {int identifier; } ;
struct TYPE_3__ {int /*<<< orphan*/  conn; } ;
struct eap_fast_data {int provisioning_allowed; int anon_provisioning; int /*<<< orphan*/  fast_version; struct wpabuf* pending_phase2_req; scalar_t__ resuming; TYPE_1__ ssl; scalar_t__ provisioning; struct wpabuf* pending_resp; } ;
typedef  int /*<<< orphan*/  cipher ;

/* Variables and functions */
 void* DECISION_FAIL ; 
 int EAP_FAST_PROV_AUTH ; 
 int EAP_TLS_FLAGS_START ; 
 int /*<<< orphan*/  EAP_TYPE_FAST ; 
 scalar_t__ EXT_CERT_CHECK_BAD ; 
 scalar_t__ EXT_CERT_CHECK_GOOD ; 
 void* METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,int,struct wpabuf*,struct wpabuf**) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_fast_data*) ; 
 scalar_t__ FUNC2 (struct eap_sm*,struct eap_fast_data*,int,int const*,size_t) ; 
 struct eap_peer_config* FUNC3 (struct eap_sm*) ; 
 struct wpabuf* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct wpabuf*,struct wpabuf**) ; 
 int* FUNC6 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,struct eap_method_ret*,struct wpabuf const*,size_t*,int*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 struct eap_hdr* FUNC12 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int const*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_sm *sm, void *priv,
					struct eap_method_ret *ret,
					const struct wpabuf *reqData)
{
	const struct eap_hdr *req;
	size_t left;
	int res;
	u8 flags, id;
	struct wpabuf *resp;
	const u8 *pos;
	struct eap_fast_data *data = priv;
	struct wpabuf msg;

	pos = FUNC6(sm, &data->ssl, EAP_TYPE_FAST, ret,
					reqData, &left, &flags);
	if (pos == NULL)
		return NULL;

	req = FUNC12(reqData);
	id = req->identifier;

	if (flags & EAP_TLS_FLAGS_START) {
		if (FUNC2(sm, data, flags, pos, left) < 0)
			return NULL;

		left = 0; /* A-ID is not used in further packet processing */
	}

	FUNC13(&msg, pos, left);

	resp = NULL;
	if (FUNC8(sm->ssl_ctx, data->ssl.conn) &&
	    !data->resuming) {
		/* Process tunneled (encrypted) phase 2 data. */
		res = FUNC0(sm, data, ret, id, &msg, &resp);
		if (res < 0) {
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			/*
			 * Ack possible Alert that may have caused failure in
			 * decryption.
			 */
			res = 1;
		}
	} else {
		if (sm->waiting_ext_cert_check && data->pending_resp) {
			struct eap_peer_config *config = FUNC3(sm);

			if (config->pending_ext_cert_check ==
			    EXT_CERT_CHECK_GOOD) {
				FUNC10(MSG_DEBUG,
					   "EAP-FAST: External certificate check succeeded - continue handshake");
				resp = data->pending_resp;
				data->pending_resp = NULL;
				sm->waiting_ext_cert_check = 0;
				return resp;
			}

			if (config->pending_ext_cert_check ==
			    EXT_CERT_CHECK_BAD) {
				FUNC10(MSG_DEBUG,
					   "EAP-FAST: External certificate check failed - force authentication failure");
				ret->methodState = METHOD_DONE;
				ret->decision = DECISION_FAIL;
				sm->waiting_ext_cert_check = 0;
				return NULL;
			}

			FUNC10(MSG_DEBUG,
				   "EAP-FAST: Continuing to wait external server certificate validation");
			return NULL;
		}

		/* Continue processing TLS handshake (phase 1). */
		res = FUNC5(sm, &data->ssl,
						  EAP_TYPE_FAST,
						  data->fast_version, id, &msg,
						  &resp);
		if (res < 0) {
			FUNC10(MSG_DEBUG,
				   "EAP-FAST: TLS processing failed");
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			return resp;
		}

		if (sm->waiting_ext_cert_check) {
			FUNC10(MSG_DEBUG,
				   "EAP-FAST: Waiting external server certificate validation");
			FUNC11(data->pending_resp);
			data->pending_resp = resp;
			return NULL;
		}

		if (FUNC8(sm->ssl_ctx, data->ssl.conn)) {
			char cipher[80];
			FUNC10(MSG_DEBUG,
				   "EAP-FAST: TLS done, proceed to Phase 2");
			if (data->provisioning &&
			    (!(data->provisioning_allowed &
			       EAP_FAST_PROV_AUTH) ||
			     FUNC9(sm->ssl_ctx, data->ssl.conn,
					    cipher, sizeof(cipher)) < 0 ||
			     FUNC7(cipher, "ADH-") ||
			     FUNC7(cipher, "anon"))) {
				FUNC10(MSG_DEBUG, "EAP-FAST: Using "
					   "anonymous (unauthenticated) "
					   "provisioning");
				data->anon_provisioning = 1;
			} else
				data->anon_provisioning = 0;
			data->resuming = 0;
			if (FUNC1(sm, data) < 0) {
				FUNC10(MSG_DEBUG,
					   "EAP-FAST: Could not derive keys");
				ret->methodState = METHOD_DONE;
				ret->decision = DECISION_FAIL;
				FUNC11(resp);
				return NULL;
			}
		}

		if (res == 2) {
			/*
			 * Application data included in the handshake message.
			 */
			FUNC11(data->pending_phase2_req);
			data->pending_phase2_req = resp;
			resp = NULL;
			res = FUNC0(sm, data, ret, id, &msg, &resp);
		}
	}

	if (res == 1) {
		FUNC11(resp);
		return FUNC4(id, EAP_TYPE_FAST,
					      data->fast_version);
	}

	return resp;
}