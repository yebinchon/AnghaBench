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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  server_id_len; int /*<<< orphan*/  server_id; } ;
struct TYPE_4__ {int dhcomp_len; int pnonce_len; scalar_t__ nonce_len; } ;
struct eap_eke_data {scalar_t__ state; int /*<<< orphan*/  msgs; TYPE_1__ sess; int /*<<< orphan*/  nonce_p; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; int /*<<< orphan*/  dh_priv; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ COMMIT ; 
 int /*<<< orphan*/  CONFIRM ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_AUTHENTICATION_FAIL ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PROTO_ERROR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct eap_sm *sm,
				   struct eap_eke_data *data,
				   const struct wpabuf *respData,
				   const u8 *payload, size_t payloadlen)
{
	const u8 *pos, *end, *dhcomp, *pnonce;
	size_t decrypt_len;

	FUNC7(MSG_DEBUG, "EAP-EKE: Received Response/Commit");

	if (data->state != COMMIT) {
		FUNC2(data, EAP_EKE_FAIL_PROTO_ERROR);
		return;
	}

	pos = payload;
	end = payload + payloadlen;

	if (pos + data->sess.dhcomp_len + data->sess.pnonce_len > end) {
		FUNC7(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Commit");
		FUNC2(data, EAP_EKE_FAIL_PROTO_ERROR);
		return;
	}

	FUNC5(MSG_DEBUG, "EAP-EKE: DHComponent_P",
		    pos, data->sess.dhcomp_len);
	dhcomp = pos;
	pos += data->sess.dhcomp_len;
	FUNC5(MSG_DEBUG, "EAP-EKE: PNonce_P", pos, data->sess.pnonce_len);
	pnonce = pos;
	pos += data->sess.pnonce_len;
	FUNC5(MSG_DEBUG, "EAP-EKE: CBValue", pos, end - pos);

	if (FUNC3(&data->sess, data->key, data->dh_priv, dhcomp)
	    < 0) {
		FUNC7(MSG_INFO, "EAP-EKE: Failed to derive shared secret");
		FUNC2(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return;
	}

	if (FUNC1(&data->sess,
				 sm->server_id, sm->server_id_len,
				 data->peerid, data->peerid_len) < 0) {
		FUNC7(MSG_INFO, "EAP-EKE: Failed to derive Ke/Ki");
		FUNC2(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return;
	}

	decrypt_len = sizeof(data->nonce_p);
	if (FUNC0(&data->sess, pnonce, data->sess.pnonce_len,
				 data->nonce_p, &decrypt_len) < 0) {
		FUNC7(MSG_INFO, "EAP-EKE: Failed to decrypt PNonce_P");
		FUNC2(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
		return;
	}
	if (decrypt_len < (size_t) data->sess.nonce_len) {
		FUNC7(MSG_INFO, "EAP-EKE: PNonce_P protected data too short to include Nonce_P");
		FUNC2(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
		return;
	}
	FUNC6(MSG_DEBUG, "EAP-EKE: Nonce_P",
			data->nonce_p, data->sess.nonce_len);

	if (FUNC10(&data->msgs, FUNC8(respData)) < 0) {
		FUNC2(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return;
	}
	FUNC9(data->msgs, respData);

	FUNC4(data, CONFIRM);
}