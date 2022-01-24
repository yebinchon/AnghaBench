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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC6(const u8 *key, size_t key_len, const u8 *iv, size_t iv_len,
	       const u8 *plain, size_t plain_len,
	       const u8 *aad, size_t aad_len, u8 *crypt, u8 *tag)
{
	u8 H[AES_BLOCK_SIZE];
	u8 J0[AES_BLOCK_SIZE];
	u8 S[16];
	void *aes;

	aes = FUNC3(key, key_len, H);
	if (aes == NULL)
		return -1;

	FUNC4(iv, iv_len, H, J0);

	/* C = GCTR_K(inc_32(J_0), P) */
	FUNC1(aes, J0, plain, plain_len, crypt);

	FUNC2(H, aad, aad_len, crypt, plain_len, S);

	/* T = MSB_t(GCTR_K(J_0, S)) */
	FUNC5(aes, J0, S, sizeof(S), tag);

	/* Return (C, T) */

	FUNC0(aes);

	return 0;
}