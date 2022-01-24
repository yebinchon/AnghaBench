#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  server_id_len; int /*<<< orphan*/  server_id; TYPE_1__* user; } ;
struct TYPE_5__ {int /*<<< orphan*/  dhcomp_len; int /*<<< orphan*/  dhgroup; } ;
struct eap_eke_data {int /*<<< orphan*/  msgs; TYPE_2__ sess; int /*<<< orphan*/  key; int /*<<< orphan*/  dh_priv; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; } ;
struct TYPE_4__ {int /*<<< orphan*/  password_len; int /*<<< orphan*/ * password; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EKE_COMMIT ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PASSWD_NOT_FOUND ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int EAP_EKE_MAX_DH_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC0 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct eap_eke_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC12(struct eap_sm *sm,
					    struct eap_eke_data *data, u8 id)
{
	struct wpabuf *msg;
	u8 pub[EAP_EKE_MAX_DH_LEN];

	FUNC6(MSG_DEBUG, "EAP-EKE: Request/Commit");

	if (sm->user == NULL || sm->user->password == NULL) {
		FUNC6(MSG_INFO, "EAP-EKE: Password with not configured");
		FUNC5(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
		return FUNC0(data, id);
	}

	if (FUNC2(&data->sess, sm->user->password,
			       sm->user->password_len,
			       sm->server_id, sm->server_id_len,
			       data->peerid, data->peerid_len, data->key) < 0) {
		FUNC6(MSG_INFO, "EAP-EKE: Failed to derive key");
		FUNC5(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC0(data, id);
	}

	msg = FUNC1(data, id, data->sess.dhcomp_len,
				EAP_EKE_COMMIT);
	if (msg == NULL) {
		FUNC5(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC0(data, id);
	}

	/*
	 * y_s = g ^ x_s (mod p)
	 * x_s = random number 2 .. p-1
	 * temp = prf(0+, password)
	 * key = prf+(temp, ID_S | ID_P)
	 * DHComponent_S = Encr(key, y_s)
	 */

	if (FUNC3(data->sess.dhgroup, data->dh_priv, pub) < 0) {
		FUNC6(MSG_INFO, "EAP-EKE: Failed to initialize DH");
		FUNC5(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC0(data, id);
	}

	if (FUNC4(&data->sess, data->key, pub,
			   FUNC9(msg, data->sess.dhcomp_len))
	    < 0) {
		FUNC6(MSG_INFO, "EAP-EKE: Failed to build DHComponent_S");
		FUNC7(msg);
		FUNC5(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC0(data, id);
	}

	if (FUNC11(&data->msgs, FUNC8(msg)) < 0) {
		FUNC7(msg);
		FUNC5(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return FUNC0(data, id);
	}
	FUNC10(data->msgs, msg);

	return msg;
}