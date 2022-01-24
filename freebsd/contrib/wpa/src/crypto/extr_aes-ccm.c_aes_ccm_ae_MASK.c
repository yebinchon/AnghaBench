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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t const,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t const,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/  const*,size_t) ; 

int FUNC7(const u8 *key, size_t key_len, const u8 *nonce,
	       size_t M, const u8 *plain, size_t plain_len,
	       const u8 *aad, size_t aad_len, u8 *crypt, u8 *auth)
{
	const size_t L = 2;
	void *aes;
	u8 x[AES_BLOCK_SIZE], a[AES_BLOCK_SIZE];

	if (aad_len > 30 || M > AES_BLOCK_SIZE)
		return -1;

	aes = FUNC6(key, key_len);
	if (aes == NULL)
		return -1;

	FUNC1(aes, M, L, nonce, aad, aad_len, plain_len, x);
	FUNC0(aes, plain, plain_len, x);

	/* Encryption */
	FUNC4(L, nonce, a);
	FUNC2(aes, L, plain, plain_len, crypt, a);
	FUNC3(aes, M, x, a, auth);

	FUNC5(aes);

	return 0;
}