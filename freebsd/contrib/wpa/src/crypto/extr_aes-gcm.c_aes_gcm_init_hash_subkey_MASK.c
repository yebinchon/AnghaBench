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
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void * FUNC4(const u8 *key, size_t key_len, u8 *H)
{
	void *aes;

	aes = FUNC1(key, key_len);
	if (aes == NULL)
		return NULL;

	/* Generate hash subkey H = AES_K(0^128) */
	FUNC2(H, 0, AES_BLOCK_SIZE);
	FUNC0(aes, H, H);
	FUNC3(MSG_EXCESSIVE, "Hash subkey H for GHASH",
			H, AES_BLOCK_SIZE);
	return aes;
}