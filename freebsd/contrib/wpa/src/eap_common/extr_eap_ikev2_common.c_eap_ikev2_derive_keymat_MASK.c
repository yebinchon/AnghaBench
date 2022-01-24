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
struct ikev2_keys {int /*<<< orphan*/  SK_d_len; int /*<<< orphan*/ * SK_d; } ;

/* Variables and functions */
 scalar_t__ EAP_EMSK_LEN ; 
 scalar_t__ EAP_MSK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC5(int prf, struct ikev2_keys *keys,
			    const u8 *i_nonce, size_t i_nonce_len,
			    const u8 *r_nonce, size_t r_nonce_len,
			    u8 *keymat)
{
	u8 *nonces;
	size_t nlen;

	/* KEYMAT = prf+(SK_d, Ni | Nr) */
	if (keys->SK_d == NULL || i_nonce == NULL || r_nonce == NULL)
		return -1;

	nlen = i_nonce_len + r_nonce_len;
	nonces = FUNC2(nlen);
	if (nonces == NULL)
		return -1;
	FUNC3(nonces, i_nonce, i_nonce_len);
	FUNC3(nonces + i_nonce_len, r_nonce, r_nonce_len);

	if (FUNC0(prf, keys->SK_d, keys->SK_d_len, nonces, nlen,
			   keymat, EAP_MSK_LEN + EAP_EMSK_LEN)) {
		FUNC1(nonces);
		return -1;
	}
	FUNC1(nonces);

	FUNC4(MSG_DEBUG, "EAP-IKEV2: KEYMAT",
			keymat, EAP_MSK_LEN + EAP_EMSK_LEN);

	return 0;
}