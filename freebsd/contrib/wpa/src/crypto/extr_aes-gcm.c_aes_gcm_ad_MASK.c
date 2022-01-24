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
typedef  int /*<<< orphan*/  S ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int FUNC8(const u8 *key, size_t key_len, const u8 *iv, size_t iv_len,
	       const u8 *crypt, size_t crypt_len,
	       const u8 *aad, size_t aad_len, const u8 *tag, u8 *plain)
{
	u8 H[AES_BLOCK_SIZE];
	u8 J0[AES_BLOCK_SIZE];
	u8 S[16], T[16];
	void *aes;

	aes = FUNC3(key, key_len, H);
	if (aes == NULL)
		return -1;

	FUNC4(iv, iv_len, H, J0);

	/* P = GCTR_K(inc_32(J_0), C) */
	FUNC1(aes, J0, crypt, crypt_len, plain);

	FUNC2(H, aad, aad_len, crypt, crypt_len, S);

	/* T' = MSB_t(GCTR_K(J_0, S)) */
	FUNC5(aes, J0, S, sizeof(S), T);

	FUNC0(aes);

	if (FUNC6(tag, T, 16) != 0) {
		FUNC7(MSG_EXCESSIVE, "GCM: Tag mismatch");
		return -1;
	}

	return 0;
}