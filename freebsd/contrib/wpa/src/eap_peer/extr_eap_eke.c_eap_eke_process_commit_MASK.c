#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
typedef  struct wpabuf const wpabuf ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int dummy; } ;
struct TYPE_6__ {int dhcomp_len; int /*<<< orphan*/  nonce_len; scalar_t__ pnonce_len; int /*<<< orphan*/  dhgroup; } ;
struct eap_eke_data {scalar_t__ state; int /*<<< orphan*/  msgs; TYPE_1__ sess; int /*<<< orphan*/  nonce_p; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; int /*<<< orphan*/  serverid_len; int /*<<< orphan*/  serverid; int /*<<< orphan*/  dh_priv; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 scalar_t__ COMMIT ; 
 int /*<<< orphan*/  CONFIRM ; 
 int /*<<< orphan*/  EAP_EKE_COMMIT ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PASSWD_NOT_FOUND ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PROTO_ERROR ; 
 int EAP_EKE_MAX_DH_LEN ; 
 int EAP_EKE_MAX_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf const* FUNC0 (struct eap_eke_data*,struct eap_method_ret*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 struct wpabuf const* FUNC1 (struct eap_eke_data*,int /*<<< orphan*/  const,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC9 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  const FUNC10 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf const*) ; 
 scalar_t__ FUNC17 (struct wpabuf const*) ; 
 int /*<<< orphan*/  const* FUNC18 (struct wpabuf const*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC21 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf * FUNC22(struct eap_sm *sm,
					      struct eap_eke_data *data,
					      struct eap_method_ret *ret,
					      const struct wpabuf *reqData,
					      const u8 *payload,
					      size_t payload_len)
{
	struct wpabuf *resp;
	const u8 *pos, *end, *dhcomp;
	size_t prot_len;
	u8 *rpos;
	u8 key[EAP_EKE_MAX_KEY_LEN];
	u8 pub[EAP_EKE_MAX_DH_LEN];
	const u8 *password;
	size_t password_len;
	u8 id = FUNC10(reqData);

	if (data->state != COMMIT) {
		FUNC15(MSG_DEBUG, "EAP-EKE: EAP-EKE-Commit/Request received in unexpected state (%d)", data->state);
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	FUNC15(MSG_DEBUG, "EAP-EKE: Received EAP-EKE-Commit/Request");

	password = FUNC9(sm, &password_len);
	if (password == NULL) {
		FUNC15(MSG_INFO, "EAP-EKE: No password configured!");
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PASSWD_NOT_FOUND);
	}

	pos = payload;
	end = payload + payload_len;

	if (pos + data->sess.dhcomp_len > end) {
		FUNC15(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Commit");
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	FUNC13(MSG_DEBUG, "EAP-EKE: DHComponent_S",
		    pos, data->sess.dhcomp_len);
	dhcomp = pos;
	pos += data->sess.dhcomp_len;
	FUNC13(MSG_DEBUG, "EAP-EKE: CBValue", pos, end - pos);

	/*
	 * temp = prf(0+, password)
	 * key = prf+(temp, ID_S | ID_P)
	 */
	if (FUNC3(&data->sess, password, password_len,
			       data->serverid, data->serverid_len,
			       data->peerid, data->peerid_len, key) < 0) {
		FUNC15(MSG_INFO, "EAP-EKE: Failed to derive key");
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	/*
	 * y_p = g ^ x_p (mod p)
	 * x_p = random number 2 .. p-1
	 */
	if (FUNC4(data->sess.dhgroup, data->dh_priv, pub) < 0) {
		FUNC15(MSG_INFO, "EAP-EKE: Failed to initialize DH");
		FUNC11(key, sizeof(key));
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	if (FUNC7(&data->sess, key, data->dh_priv, dhcomp) < 0)
	{
		FUNC15(MSG_INFO, "EAP-EKE: Failed to derive shared secret");
		FUNC11(key, sizeof(key));
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	if (FUNC2(&data->sess,
				 data->serverid, data->serverid_len,
				 data->peerid, data->peerid_len) < 0) {
		FUNC15(MSG_INFO, "EAP-EKE: Failed to derive Ke/Ki");
		FUNC11(key, sizeof(key));
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	FUNC15(MSG_DEBUG, "EAP-EKE: Sending EAP-EKE-Commit/Response");

	resp = FUNC1(data, id,
				 data->sess.dhcomp_len + data->sess.pnonce_len,
				 EAP_EKE_COMMIT);
	if (resp == NULL) {
		FUNC11(key, sizeof(key));
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	/* DHComponent_P = Encr(key, y_p) */
	rpos = FUNC18(resp, data->sess.dhcomp_len);
	if (FUNC5(&data->sess, key, pub, rpos) < 0) {
		FUNC16(resp);
		FUNC15(MSG_INFO, "EAP-EKE: Failed to build DHComponent_P");
		FUNC11(key, sizeof(key));
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC11(key, sizeof(key));

	FUNC13(MSG_DEBUG, "EAP-EKE: DHComponent_P",
		    rpos, data->sess.dhcomp_len);

	if (FUNC12(data->nonce_p, data->sess.nonce_len)) {
		FUNC16(resp);
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC14(MSG_DEBUG, "EAP-EKE: Nonce_P",
			data->nonce_p, data->sess.nonce_len);
	prot_len = FUNC21(resp);
	if (FUNC6(&data->sess, data->nonce_p, data->sess.nonce_len,
			 FUNC18(resp, 0), &prot_len) < 0) {
		FUNC16(resp);
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC13(MSG_DEBUG, "EAP-EKE: PNonce_P",
		    FUNC18(resp, 0), prot_len);
	FUNC18(resp, prot_len);

	/* TODO: CBValue */

	if (FUNC20(&data->msgs, FUNC17(reqData) + FUNC17(resp))
	    < 0) {
		FUNC16(resp);
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC19(data->msgs, reqData);
	FUNC19(data->msgs, resp);

	FUNC8(data, CONFIRM);

	return resp;
}