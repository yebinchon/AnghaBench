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
struct wpabuf {int dummy; } ;
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;
struct ikev2_keys {int /*<<< orphan*/  SK_integ_len; int /*<<< orphan*/  SK_encr_len; int /*<<< orphan*/ * SK_ar; int /*<<< orphan*/ * SK_ai; int /*<<< orphan*/ * SK_er; int /*<<< orphan*/ * SK_ei; } ;
struct ikev2_integ_alg {size_t hash_len; } ;
struct ikev2_encr_alg {size_t block_size; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct ikev2_encr_alg* FUNC2 (int) ; 
 struct ikev2_integ_alg* FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 size_t FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 void* FUNC11 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,size_t) ; 

int FUNC14(int encr_id, int integ_id, struct ikev2_keys *keys,
			  int initiator, struct wpabuf *msg,
			  struct wpabuf *plain, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;
	size_t iv_len, pad_len;
	u8 *icv, *iv;
	const struct ikev2_integ_alg *integ_alg;
	const struct ikev2_encr_alg *encr_alg;
	const u8 *SK_e = initiator ? keys->SK_ei : keys->SK_er;
	const u8 *SK_a = initiator ? keys->SK_ai : keys->SK_ar;

	FUNC7(MSG_DEBUG, "IKEV2: Adding Encrypted payload");

	/* Encr - RFC 4306, Sect. 3.14 */

	encr_alg = FUNC2(encr_id);
	if (encr_alg == NULL) {
		FUNC7(MSG_INFO, "IKEV2: Unsupported encryption type");
		return -1;
	}
	iv_len = encr_alg->block_size;

	integ_alg = FUNC3(integ_id);
	if (integ_alg == NULL) {
		FUNC7(MSG_INFO, "IKEV2: Unsupported intergrity type");
		return -1;
	}

	if (SK_e == NULL) {
		FUNC7(MSG_INFO, "IKEV2: No SK_e available");
		return -1;
	}

	if (SK_a == NULL) {
		FUNC7(MSG_INFO, "IKEV2: No SK_a available");
		return -1;
	}

	phdr = FUNC11(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;

	iv = FUNC11(msg, iv_len);
	if (FUNC6(iv, iv_len)) {
		FUNC7(MSG_INFO, "IKEV2: Could not generate IV");
		return -1;
	}

	pad_len = iv_len - (FUNC9(plain) + 1) % iv_len;
	if (pad_len == iv_len)
		pad_len = 0;
	FUNC11(plain, pad_len);
	FUNC13(plain, pad_len);

	if (FUNC1(encr_alg->id, SK_e, keys->SK_encr_len, iv,
			       FUNC8(plain), FUNC10(plain),
			       FUNC9(plain)) < 0)
		return -1;

	FUNC12(msg, plain);

	/* Need to update all headers (Length fields) prior to hash func */
	icv = FUNC11(msg, integ_alg->hash_len);
	plen = (u8 *) FUNC11(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);

	FUNC5(msg);

	return FUNC4(integ_id, SK_a, keys->SK_integ_len,
				FUNC8(msg),
				FUNC9(msg) - integ_alg->hash_len, icv);

	return 0;
}