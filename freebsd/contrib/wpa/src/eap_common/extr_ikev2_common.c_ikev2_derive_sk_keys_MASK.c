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
struct ikev2_prf_alg {int key_len; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  id; } ;
struct ikev2_keys {int SK_d_len; int SK_integ_len; int SK_encr_len; int SK_prf_len; void* SK_pr; void* SK_pi; void* SK_er; void* SK_ei; void* SK_ar; void* SK_ai; void* SK_d; } ;
struct ikev2_integ_alg {int key_len; } ;
struct ikev2_encr_alg {int key_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct ikev2_keys*) ; 
 int /*<<< orphan*/  FUNC1 (struct ikev2_keys*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,void*,size_t) ; 

int FUNC7(const struct ikev2_prf_alg *prf,
			 const struct ikev2_integ_alg *integ,
			 const struct ikev2_encr_alg *encr,
			 const u8 *skeyseed, const u8 *data, size_t data_len,
			 struct ikev2_keys *keys)
{
	u8 *keybuf, *pos;
	size_t keybuf_len;

	/*
	 * {SK_d | SK_ai | SK_ar | SK_ei | SK_er | SK_pi | SK_pr } =
	 *	prf+(SKEYSEED, Ni | Nr | SPIi | SPIr )
	 */
	FUNC0(keys);
	keys->SK_d_len = prf->key_len;
	keys->SK_integ_len = integ->key_len;
	keys->SK_encr_len = encr->key_len;
	keys->SK_prf_len = prf->key_len;

	keybuf_len = keys->SK_d_len + 2 * keys->SK_integ_len +
		2 * keys->SK_encr_len + 2 * keys->SK_prf_len;
	keybuf = FUNC4(keybuf_len);
	if (keybuf == NULL)
		return -1;

	if (FUNC2(prf->id, skeyseed, prf->hash_len,
			   data, data_len, keybuf, keybuf_len)) {
		FUNC3(keybuf);
		return -1;
	}

	pos = keybuf;

	keys->SK_d = FUNC4(keys->SK_d_len);
	if (keys->SK_d) {
		FUNC5(keys->SK_d, pos, keys->SK_d_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_d",
				keys->SK_d, keys->SK_d_len);
	}
	pos += keys->SK_d_len;

	keys->SK_ai = FUNC4(keys->SK_integ_len);
	if (keys->SK_ai) {
		FUNC5(keys->SK_ai, pos, keys->SK_integ_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_ai",
				keys->SK_ai, keys->SK_integ_len);
	}
	pos += keys->SK_integ_len;

	keys->SK_ar = FUNC4(keys->SK_integ_len);
	if (keys->SK_ar) {
		FUNC5(keys->SK_ar, pos, keys->SK_integ_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_ar",
				keys->SK_ar, keys->SK_integ_len);
	}
	pos += keys->SK_integ_len;

	keys->SK_ei = FUNC4(keys->SK_encr_len);
	if (keys->SK_ei) {
		FUNC5(keys->SK_ei, pos, keys->SK_encr_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_ei",
				keys->SK_ei, keys->SK_encr_len);
	}
	pos += keys->SK_encr_len;

	keys->SK_er = FUNC4(keys->SK_encr_len);
	if (keys->SK_er) {
		FUNC5(keys->SK_er, pos, keys->SK_encr_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_er",
				keys->SK_er, keys->SK_encr_len);
	}
	pos += keys->SK_encr_len;

	keys->SK_pi = FUNC4(keys->SK_prf_len);
	if (keys->SK_pi) {
		FUNC5(keys->SK_pi, pos, keys->SK_prf_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_pi",
				keys->SK_pi, keys->SK_prf_len);
	}
	pos += keys->SK_prf_len;

	keys->SK_pr = FUNC4(keys->SK_prf_len);
	if (keys->SK_pr) {
		FUNC5(keys->SK_pr, pos, keys->SK_prf_len);
		FUNC6(MSG_DEBUG, "IKEV2: SK_pr",
				keys->SK_pr, keys->SK_prf_len);
	}

	FUNC3(keybuf);

	if (!FUNC1(keys)) {
		FUNC0(keys);
		return -1;
	}

	return 0;
}