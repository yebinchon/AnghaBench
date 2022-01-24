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
 int DPP_MAX_HASH_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ *,unsigned int,char const*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC4(const u8 *Nx, size_t Nx_len, u8 *k2,
			 unsigned int hash_len)
{
	u8 salt[DPP_MAX_HASH_LEN], prk[DPP_MAX_HASH_LEN];
	const char *info = "second intermediate key";
	int res;

	/* k2 = HKDF(<>, "second intermediate key", N.x) */

	/* HKDF-Extract(<>, N.x) */
	FUNC2(salt, 0, hash_len);
	res = FUNC1(hash_len, salt, hash_len, Nx, Nx_len, prk);
	if (res < 0)
		return -1;
	FUNC3(MSG_DEBUG, "DPP: PRK = HKDF-Extract(<>, IKM=N.x)",
			prk, hash_len);

	/* HKDF-Expand(PRK, info, L) */
	res = FUNC0(hash_len, prk, hash_len, info, k2, hash_len);
	FUNC2(prk, 0, hash_len);
	if (res < 0)
		return -1;

	FUNC3(MSG_DEBUG, "DPP: k2 = HKDF-Expand(PRK, info, L)",
			k2, hash_len);
	return 0;
}