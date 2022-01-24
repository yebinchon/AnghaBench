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
struct TYPE_4__ {size_t pnonce_ps_len; size_t prf_len; int nonce_len; } ;
struct eap_eke_data {TYPE_1__ sess; int /*<<< orphan*/  msgs; int /*<<< orphan*/  nonce_s; int /*<<< orphan*/  nonce_p; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EKE_CONFIRM ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int EAP_EKE_MAX_NONCE_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC1 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_eke_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC12 (struct wpabuf*,size_t) ; 
 size_t FUNC13 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_sm *sm,
					     struct eap_eke_data *data, u8 id)
{
	struct wpabuf *msg;
	size_t plen, prot_len;
	u8 nonces[2 * EAP_EKE_MAX_NONCE_LEN];
	u8 *auth;

	FUNC10(MSG_DEBUG, "EAP-EKE: Request/Confirm");

	plen = data->sess.pnonce_ps_len + data->sess.prf_len;
	msg = FUNC2(data, id, plen, EAP_EKE_CONFIRM);
	if (msg == NULL) {
		FUNC4(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC1(data, id);
	}

	if (FUNC7(data->nonce_s, data->sess.nonce_len)) {
		FUNC11(msg);
		FUNC4(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC1(data, id);
	}
	FUNC9(MSG_DEBUG, "EAP-EKE: Nonce_S",
			data->nonce_s, data->sess.nonce_len);

	FUNC6(nonces, data->nonce_p, data->sess.nonce_len);
	FUNC6(nonces + data->sess.nonce_len, data->nonce_s,
		  data->sess.nonce_len);
	prot_len = FUNC13(msg);
	if (FUNC5(&data->sess, nonces, 2 * data->sess.nonce_len,
			 FUNC12(msg, 0), &prot_len) < 0) {
		FUNC11(msg);
		FUNC4(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC1(data, id);
	}
	FUNC12(msg, prot_len);

	if (FUNC3(&data->sess,
			      sm->server_id, sm->server_id_len,
			      data->peerid, data->peerid_len,
			      data->nonce_p, data->nonce_s) < 0) {
		FUNC11(msg);
		FUNC4(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC1(data, id);
	}

	auth = FUNC12(msg, data->sess.prf_len);
	if (FUNC0(&data->sess, "EAP-EKE server", data->msgs, auth) < 0) {
		FUNC11(msg);
		FUNC4(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC1(data, id);
	}
	FUNC8(MSG_DEBUG, "EAP-EKE: Auth_S", auth, data->sess.prf_len);

	return msg;
}