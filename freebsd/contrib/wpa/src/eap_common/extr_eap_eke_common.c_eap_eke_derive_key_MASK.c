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
struct eap_eke_session {size_t prf_len; int /*<<< orphan*/  prf; } ;

/* Variables and functions */
 int EAP_EKE_MAX_HASH_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 

int FUNC8(struct eap_eke_session *sess,
		       const u8 *password, size_t password_len,
		       const u8 *id_s, size_t id_s_len, const u8 *id_p,
		       size_t id_p_len, u8 *key)
{
	u8 zeros[EAP_EKE_MAX_HASH_LEN];
	u8 temp[EAP_EKE_MAX_HASH_LEN];
	size_t key_len = 16; /* Only AES-128-CBC is used here */
	u8 *id;

	/* temp = prf(0+, password) */
	FUNC5(zeros, 0, sess->prf_len);
	if (FUNC0(sess->prf, zeros, sess->prf_len,
			password, password_len, NULL, 0, temp) < 0)
		return -1;
	FUNC7(MSG_DEBUG, "EAP-EKE: temp = prf(0+, password)",
			temp, sess->prf_len);

	/* key = prf+(temp, ID_S | ID_P) */
	id = FUNC3(id_s_len + id_p_len);
	if (id == NULL)
		return -1;
	FUNC4(id, id_s, id_s_len);
	FUNC4(id + id_s_len, id_p, id_p_len);
	FUNC6(MSG_DEBUG, "EAP-EKE: ID_S | ID_P",
			  id, id_s_len + id_p_len);
	if (FUNC1(sess->prf, temp, sess->prf_len,
			    id, id_s_len + id_p_len, key, key_len) < 0) {
		FUNC2(id);
		return -1;
	}
	FUNC2(id);
	FUNC7(MSG_DEBUG, "EAP-EKE: key = prf+(temp, ID_S | ID_P)",
			key, key_len);

	return 0;
}