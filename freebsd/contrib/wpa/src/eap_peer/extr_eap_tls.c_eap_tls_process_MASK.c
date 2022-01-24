#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  conn; struct wpabuf* tls_out; } ;
struct eap_tls_data {int /*<<< orphan*/  eap_type; TYPE_1__ ssl; int /*<<< orphan*/  ssl_ctx; struct wpabuf* pending_resp; } ;
struct eap_sm {scalar_t__ waiting_ext_cert_check; } ;
struct eap_peer_config {scalar_t__ pending_ext_cert_check; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int EAP_TLS_FLAGS_START ; 
 scalar_t__ EXT_CERT_CHECK_BAD ; 
 scalar_t__ EXT_CERT_CHECK_GOOD ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int FUNC1 (struct wpabuf const*) ; 
 struct wpabuf* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct wpabuf*,struct wpabuf**) ; 
 int* FUNC4 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,struct eap_method_ret*,struct wpabuf const*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct wpabuf* FUNC6 (struct eap_sm*,struct eap_tls_data*,struct eap_method_ret*,int,struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_sm*,struct eap_tls_data*,struct eap_method_ret*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int const*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	size_t left;
	int res;
	struct wpabuf *resp;
	u8 flags, id;
	const u8 *pos;
	struct eap_tls_data *data = priv;
	struct wpabuf msg;

	if (sm->waiting_ext_cert_check && data->pending_resp) {
		struct eap_peer_config *config = FUNC0(sm);

		if (config->pending_ext_cert_check == EXT_CERT_CHECK_GOOD) {
			FUNC10(MSG_DEBUG,
				   "EAP-TLS: External certificate check succeeded - continue handshake");
			resp = data->pending_resp;
			data->pending_resp = NULL;
			sm->waiting_ext_cert_check = 0;
			return resp;
		}

		if (config->pending_ext_cert_check == EXT_CERT_CHECK_BAD) {
			FUNC10(MSG_DEBUG,
				   "EAP-TLS: External certificate check failed - force authentication failure");
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			sm->waiting_ext_cert_check = 0;
			return NULL;
		}

		FUNC10(MSG_DEBUG,
			   "EAP-TLS: Continuing to wait external server certificate validation");
		return NULL;
	}

	pos = FUNC4(sm, &data->ssl, data->eap_type, ret,
					reqData, &left, &flags);
	if (pos == NULL)
		return NULL;
	id = FUNC1(reqData);

	if (flags & EAP_TLS_FLAGS_START) {
		FUNC10(MSG_DEBUG, "EAP-TLS: Start");
		left = 0; /* make sure that this frame is empty, even though it
			   * should always be, anyway */
	}

	resp = NULL;
	FUNC12(&msg, pos, left);
	res = FUNC3(sm, &data->ssl, data->eap_type, 0,
					  id, &msg, &resp);

	if (res < 0) {
		return FUNC6(sm, data, ret, res, resp, id);
	}

	if (sm->waiting_ext_cert_check) {
		FUNC10(MSG_DEBUG,
			   "EAP-TLS: Waiting external server certificate validation");
		FUNC11(data->pending_resp);
		data->pending_resp = resp;
		return NULL;
	}

	if (res == 2) {
		/* Application data included in the handshake message (used by
		 * EAP-TLS 1.3 to indicate conclusion of the exchange). */
		FUNC9(MSG_DEBUG, "EAP-TLS: Received Application Data",
				resp);
		FUNC9(MSG_DEBUG, "EAP-TLS: Remaining tls_out data",
				data->ssl.tls_out);
		FUNC5(&data->ssl);
		/* Send an ACK to allow the server to complete exchange */
		res = 1;
	}

	if (FUNC8(data->ssl_ctx, data->ssl.conn))
		FUNC7(sm, data, ret);

	if (res == 1) {
		FUNC11(resp);
		return FUNC2(id, data->eap_type, 0);
	}

	return resp;
}