#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ workaround; int /*<<< orphan*/  ssl_ctx; scalar_t__ waiting_ext_cert_check; } ;
struct eap_peer_config {scalar_t__ pending_ext_cert_check; } ;
struct TYPE_5__ {int /*<<< orphan*/  conn; } ;
struct eap_peap_data {int peap_version; int force_peap_version; int phase2_success; struct wpabuf* pending_phase2_req; scalar_t__ resuming; int /*<<< orphan*/  id_len; scalar_t__ session_id; TYPE_1__ ssl; scalar_t__ key_data; scalar_t__ force_new_label; struct wpabuf* pending_resp; } ;
struct eap_method_ret {scalar_t__ methodState; void* allowNotifications; void* decision; } ;
struct eap_hdr {int identifier; } ;

/* Variables and functions */
 void* DECISION_COND_SUCC ; 
 void* DECISION_FAIL ; 
 scalar_t__ EAP_EMSK_LEN ; 
 int EAP_TLS_FLAGS_START ; 
 scalar_t__ EAP_TLS_KEY_LEN ; 
 int EAP_TLS_VERSION_MASK ; 
 int /*<<< orphan*/  EAP_TYPE_PEAP ; 
 scalar_t__ EXT_CERT_CHECK_BAD ; 
 scalar_t__ EXT_CERT_CHECK_GOOD ; 
 void* FALSE ; 
 scalar_t__ METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int FUNC1 (struct eap_sm*,struct eap_peap_data*,struct eap_method_ret*,struct eap_hdr const*,struct wpabuf*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_peap_data*) ; 
 struct wpabuf* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct eap_sm*,TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,int,int,struct wpabuf*,struct wpabuf**) ; 
 int* FUNC7 (struct eap_sm*,TYPE_1__*,int /*<<< orphan*/ ,struct eap_method_ret*,struct wpabuf const*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 struct eap_hdr* FUNC14 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,int const*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC16(struct eap_sm *sm, void *priv,
					struct eap_method_ret *ret,
					const struct wpabuf *reqData)
{
	const struct eap_hdr *req;
	size_t left;
	int res;
	u8 flags, id;
	struct wpabuf *resp;
	const u8 *pos;
	struct eap_peap_data *data = priv;
	struct wpabuf msg;

	pos = FUNC7(sm, &data->ssl, EAP_TYPE_PEAP, ret,
					reqData, &left, &flags);
	if (pos == NULL)
		return NULL;
	req = FUNC14(reqData);
	id = req->identifier;

	if (flags & EAP_TLS_FLAGS_START) {
		FUNC12(MSG_DEBUG, "EAP-PEAP: Start (server ver=%d, own "
			   "ver=%d)", flags & EAP_TLS_VERSION_MASK,
			data->peap_version);
		if ((flags & EAP_TLS_VERSION_MASK) < data->peap_version)
			data->peap_version = flags & EAP_TLS_VERSION_MASK;
		if (data->force_peap_version >= 0 &&
		    data->force_peap_version != data->peap_version) {
			FUNC12(MSG_WARNING, "EAP-PEAP: Failed to select "
				   "forced PEAP version %d",
				   data->force_peap_version);
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			ret->allowNotifications = FALSE;
			return NULL;
		}
		FUNC12(MSG_DEBUG, "EAP-PEAP: Using PEAP version %d",
			   data->peap_version);
		left = 0; /* make sure that this frame is empty, even though it
			   * should always be, anyway */
	}

	FUNC15(&msg, pos, left);

	resp = NULL;
	if (FUNC9(sm->ssl_ctx, data->ssl.conn) &&
	    !data->resuming) {
		res = FUNC1(sm, data, ret, req, &msg, &resp);
	} else {
		if (sm->waiting_ext_cert_check && data->pending_resp) {
			struct eap_peer_config *config = FUNC0(sm);

			if (config->pending_ext_cert_check ==
			    EXT_CERT_CHECK_GOOD) {
				FUNC12(MSG_DEBUG,
					   "EAP-PEAP: External certificate check succeeded - continue handshake");
				resp = data->pending_resp;
				data->pending_resp = NULL;
				sm->waiting_ext_cert_check = 0;
				return resp;
			}

			if (config->pending_ext_cert_check ==
			    EXT_CERT_CHECK_BAD) {
				FUNC12(MSG_DEBUG,
					   "EAP-PEAP: External certificate check failed - force authentication failure");
				ret->methodState = METHOD_DONE;
				ret->decision = DECISION_FAIL;
				sm->waiting_ext_cert_check = 0;
				return NULL;
			}

			FUNC12(MSG_DEBUG,
				   "EAP-PEAP: Continuing to wait external server certificate validation");
			return NULL;
		}

		res = FUNC6(sm, &data->ssl,
						  EAP_TYPE_PEAP,
						  data->peap_version, id, &msg,
						  &resp);

		if (res < 0) {
			FUNC12(MSG_DEBUG,
				   "EAP-PEAP: TLS processing failed");
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			return resp;
		}


		if (sm->waiting_ext_cert_check) {
			FUNC12(MSG_DEBUG,
				   "EAP-PEAP: Waiting external server certificate validation");
			FUNC13(data->pending_resp);
			data->pending_resp = resp;
			return NULL;
		}

		if (FUNC9(sm->ssl_ctx, data->ssl.conn)) {
			char *label;
			FUNC12(MSG_DEBUG,
				   "EAP-PEAP: TLS done, proceed to Phase 2");
			FUNC2(data);
			/* draft-josefsson-ppext-eap-tls-eap-05.txt
			 * specifies that PEAPv1 would use "client PEAP
			 * encryption" as the label. However, most existing
			 * PEAPv1 implementations seem to be using the old
			 * label, "client EAP encryption", instead. Use the old
			 * label by default, but allow it to be configured with
			 * phase1 parameter peaplabel=1. */
			if (data->force_new_label)
				label = "client PEAP encryption";
			else
				label = "client EAP encryption";
			FUNC12(MSG_DEBUG, "EAP-PEAP: using label '%s' in "
				   "key derivation", label);
			data->key_data =
				FUNC4(sm, &data->ssl, label,
							NULL, 0,
							EAP_TLS_KEY_LEN +
							EAP_EMSK_LEN);
			if (data->key_data) {
				FUNC11(MSG_DEBUG,
						"EAP-PEAP: Derived key",
						data->key_data,
						EAP_TLS_KEY_LEN);
				FUNC11(MSG_DEBUG,
						"EAP-PEAP: Derived EMSK",
						data->key_data +
						EAP_TLS_KEY_LEN,
						EAP_EMSK_LEN);
			} else {
				FUNC12(MSG_DEBUG, "EAP-PEAP: Failed to "
					   "derive key");
			}

			FUNC8(data->session_id);
			data->session_id =
				FUNC5(sm, &data->ssl,
							       EAP_TYPE_PEAP,
							       &data->id_len);
			if (data->session_id) {
				FUNC10(MSG_DEBUG,
					    "EAP-PEAP: Derived Session-Id",
					    data->session_id, data->id_len);
			} else {
				FUNC12(MSG_ERROR, "EAP-PEAP: Failed to "
					   "derive Session-Id");
			}

			if (sm->workaround && data->resuming) {
				/*
				 * At least few RADIUS servers (Aegis v1.1.6;
				 * but not v1.1.4; and Cisco ACS) seem to be
				 * terminating PEAPv1 (Aegis) or PEAPv0 (Cisco
				 * ACS) session resumption with outer
				 * EAP-Success. This does not seem to follow
				 * draft-josefsson-pppext-eap-tls-eap-05.txt
				 * section 4.2, so only allow this if EAP
				 * workarounds are enabled.
				 */
				FUNC12(MSG_DEBUG, "EAP-PEAP: Workaround - "
					   "allow outer EAP-Success to "
					   "terminate PEAP resumption");
				ret->decision = DECISION_COND_SUCC;
				data->phase2_success = 1;
			}

			data->resuming = 0;
		}

		if (res == 2) {
			/*
			 * Application data included in the handshake message.
			 */
			FUNC13(data->pending_phase2_req);
			data->pending_phase2_req = resp;
			resp = NULL;
			res = FUNC1(sm, data, ret, req, &msg,
					       &resp);
		}
	}

	if (ret->methodState == METHOD_DONE) {
		ret->allowNotifications = FALSE;
	}

	if (res == 1) {
		FUNC13(resp);
		return FUNC3(id, EAP_TYPE_PEAP,
					      data->peap_version);
	}

	return resp;
}