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

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t const,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t const,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(const u8 *key, size_t key_len, const u8 *nonce,
	       size_t M, const u8 *crypt, size_t crypt_len,
	       const u8 *aad, size_t aad_len, const u8 *auth, u8 *plain)
{
	const size_t L = 2;
	void *aes;
	u8 x[AES_BLOCK_SIZE], a[AES_BLOCK_SIZE];
	u8 t[AES_BLOCK_SIZE];

	if (aad_len > 30 || M > AES_BLOCK_SIZE)
		return -1;

	aes = FUNC6(key, key_len);
	if (aes == NULL)
		return -1;

	/* Decryption */
	FUNC4(L, nonce, a);
	FUNC2(aes, M, a, auth, t);

	/* plaintext = msg XOR (S_1 | S_2 | ... | S_n) */
	FUNC3(aes, L, crypt, crypt_len, plain, a);

	FUNC1(aes, M, L, nonce, aad, aad_len, crypt_len, x);
	FUNC0(aes, plain, crypt_len, x);

	FUNC5(aes);

	if (FUNC7(x, t, M) != 0) {
		FUNC8(MSG_EXCESSIVE, "CCM: Auth mismatch");
		return -1;
	}

	return 0;
}