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
typedef  char u8 ;
struct eap_eke_session {int nonce_len; int /*<<< orphan*/  prf_len; int /*<<< orphan*/  ka; int /*<<< orphan*/  shared_secret; int /*<<< orphan*/  prf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct eap_eke_session *sess,
		      const u8 *id_s, size_t id_s_len,
		      const u8 *id_p, size_t id_p_len,
		      const u8 *nonce_p, const u8 *nonce_s)
{
	u8 *data, *pos;
	size_t data_len;
	const char *label = "EAP-EKE Ka";
	size_t label_len;

	/*
	 * Ka = prf+(SharedSecret, "EAP-EKE Ka" | ID_S | ID_P | Nonce_P |
	 *	     Nonce_S)
	 * Ka = authentication key
	 * Length of the key depends on the selected algorithms.
	 */

	label_len = FUNC4(label);
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
			    data, data_len, sess->ka, sess->prf_len) < 0) {
		FUNC1(data);
		return -1;
	}
	FUNC1(data);

	FUNC5(MSG_DEBUG, "EAP-EKE: Ka", sess->ka, sess->prf_len);

	return 0;
}