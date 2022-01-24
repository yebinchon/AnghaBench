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
typedef  char const u8 ;
struct eap_eke_session {int nonce_len; int /*<<< orphan*/  prf_len; int /*<<< orphan*/  shared_secret; int /*<<< orphan*/  prf; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EAP_EMSK_LEN ; 
 int EAP_MSK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,int) ; 

int FUNC7(struct eap_eke_session *sess,
		       const u8 *id_s, size_t id_s_len,
		       const u8 *id_p, size_t id_p_len,
		       const u8 *nonce_p, const u8 *nonce_s,
		       u8 *msk, u8 *emsk)
{
	u8 *data, *pos;
	size_t data_len;
	const char *label = "EAP-EKE Exported Keys";
	size_t label_len;
	u8 buf[EAP_MSK_LEN + EAP_EMSK_LEN];

	/*
	 * MSK | EMSK = prf+(SharedSecret, "EAP-EKE Exported Keys" | ID_S |
	 *		     ID_P | Nonce_P | Nonce_S)
	 */

	label_len = FUNC5(label);
	data_len = label_len + id_s_len + id_p_len + 2 * sess->nonce_len;
	data = FUNC2(data_len);
	if (data == NULL)
		return -1;
	pos = data;
	FUNC3(pos, label, label_len);
	pos += label_len;
	FUNC3(pos, id_s, id_s_len);
	pos += id_s_len;
	FUNC3(pos, id_p, id_p_len);
	pos += id_p_len;
	FUNC3(pos, nonce_p, sess->nonce_len);
	pos += sess->nonce_len;
	FUNC3(pos, nonce_s, sess->nonce_len);
	if (FUNC0(sess->prf, sess->shared_secret, sess->prf_len,
			    data, data_len, buf, EAP_MSK_LEN + EAP_EMSK_LEN) <
	    0) {
		FUNC1(data);
		return -1;
	}
	FUNC1(data);

	FUNC3(msk, buf, EAP_MSK_LEN);
	FUNC3(emsk, buf + EAP_MSK_LEN, EAP_EMSK_LEN);
	FUNC4(buf, 0, sizeof(buf));

	FUNC6(MSG_DEBUG, "EAP-EKE: MSK", msk, EAP_MSK_LEN);
	FUNC6(MSG_DEBUG, "EAP-EKE: EMSK", msk, EAP_EMSK_LEN);

	return 0;
}