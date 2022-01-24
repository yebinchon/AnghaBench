#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;
struct TYPE_7__ {int pnonce_ps_len; size_t prf_len; size_t nonce_len; scalar_t__ pnonce_len; } ;
struct eap_eke_data {scalar_t__ state; TYPE_1__ sess; int /*<<< orphan*/  dh_priv; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  nonce_p; int /*<<< orphan*/ * nonce_s; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; int /*<<< orphan*/  serverid_len; int /*<<< orphan*/  serverid; int /*<<< orphan*/  msgs; } ;
typedef  int /*<<< orphan*/  nonces ;

/* Variables and functions */
 scalar_t__ CONFIRM ; 
 int /*<<< orphan*/  DECISION_COND_SUCC ; 
 int /*<<< orphan*/  EAP_EKE_CONFIRM ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_AUTHENTICATION_FAIL ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PROTO_ERROR ; 
 int EAP_EKE_MAX_HASH_LEN ; 
 int EAP_EKE_MAX_NONCE_LEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC1 (struct eap_eke_data*,struct eap_method_ret*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_eke_data*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC18 (struct wpabuf*,size_t) ; 
 size_t FUNC19 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC20(struct eap_eke_data *data,
					       struct eap_method_ret *ret,
					       const struct wpabuf *reqData,
					       const u8 *payload,
					       size_t payload_len)
{
	struct wpabuf *resp;
	const u8 *pos, *end;
	size_t prot_len;
	u8 nonces[2 * EAP_EKE_MAX_NONCE_LEN];
	u8 auth_s[EAP_EKE_MAX_HASH_LEN];
	size_t decrypt_len;
	u8 *auth;
	u8 id = FUNC9(reqData);

	if (data->state != CONFIRM) {
		FUNC16(MSG_DEBUG, "EAP-EKE: EAP-EKE-Confirm/Request received in unexpected state (%d)",
			   data->state);
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	FUNC16(MSG_DEBUG, "EAP-EKE: Received EAP-EKE-Confirm/Request");

	pos = payload;
	end = payload + payload_len;

	if (pos + data->sess.pnonce_ps_len + data->sess.prf_len > end) {
		FUNC16(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Confirm");
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	decrypt_len = sizeof(nonces);
	if (FUNC3(&data->sess, pos, data->sess.pnonce_ps_len,
				 nonces, &decrypt_len) < 0) {
		FUNC16(MSG_INFO, "EAP-EKE: Failed to decrypt PNonce_PS");
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_AUTHENTICATION_FAIL);
	}
	if (decrypt_len != (size_t) 2 * data->sess.nonce_len) {
		FUNC16(MSG_INFO, "EAP-EKE: PNonce_PS protected data length does not match length of Nonce_P and Nonce_S");
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_AUTHENTICATION_FAIL);
	}
	FUNC15(MSG_DEBUG, "EAP-EKE: Received Nonce_P | Nonce_S",
			nonces, 2 * data->sess.nonce_len);
	if (FUNC10(data->nonce_p, nonces, data->sess.nonce_len) != 0) {
		FUNC16(MSG_INFO, "EAP-EKE: Received Nonce_P does not match transmitted Nonce_P");
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_AUTHENTICATION_FAIL);
	}

	FUNC12(data->nonce_s, nonces + data->sess.nonce_len,
		  data->sess.nonce_len);
	FUNC15(MSG_DEBUG, "EAP-EKE: Nonce_S",
			data->nonce_s, data->sess.nonce_len);

	if (FUNC4(&data->sess, data->serverid, data->serverid_len,
			      data->peerid, data->peerid_len,
			      data->nonce_p, data->nonce_s) < 0) {
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	if (FUNC0(&data->sess, "EAP-EKE server", data->msgs, auth_s) < 0)
	{
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC14(MSG_DEBUG, "EAP-EKE: Auth_S", auth_s, data->sess.prf_len);
	if (FUNC11(auth_s, pos + data->sess.pnonce_ps_len,
			    data->sess.prf_len) != 0) {
		FUNC16(MSG_INFO, "EAP-EKE: Auth_S does not match");
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_AUTHENTICATION_FAIL);
	}

	FUNC16(MSG_DEBUG, "EAP-EKE: Sending EAP-EKE-Confirm/Response");

	resp = FUNC2(data, id,
				 data->sess.pnonce_len + data->sess.prf_len,
				 EAP_EKE_CONFIRM);
	if (resp == NULL) {
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	prot_len = FUNC19(resp);
	if (FUNC6(&data->sess, data->nonce_s, data->sess.nonce_len,
			 FUNC18(resp, 0), &prot_len) < 0) {
		FUNC17(resp);
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC18(resp, prot_len);

	auth = FUNC18(resp, data->sess.prf_len);
	if (FUNC0(&data->sess, "EAP-EKE peer", data->msgs, auth) < 0) {
		FUNC17(resp);
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC14(MSG_DEBUG, "EAP-EKE: Auth_P", auth, data->sess.prf_len);

	if (FUNC5(&data->sess, data->serverid, data->serverid_len,
			       data->peerid, data->peerid_len,
			       data->nonce_s, data->nonce_p,
			       data->msk, data->emsk) < 0) {
		FUNC16(MSG_INFO, "EAP-EKE: Failed to derive MSK/EMSK");
		FUNC17(resp);
		return FUNC1(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	FUNC13(data->dh_priv, 0, sizeof(data->dh_priv));
	FUNC7(&data->sess);

	FUNC8(data, SUCCESS);
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_COND_SUCC;
	ret->allowNotifications = FALSE;

	return resp;
}