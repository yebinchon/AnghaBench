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

/* Variables and functions */
 int DPP_MAX_HASH_LEN ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (unsigned int,char*,unsigned int,char const*,size_t,char*) ; 
 int FUNC1 (char*,unsigned int,int /*<<< orphan*/ *,char*,size_t,char*,unsigned int) ; 
 int FUNC2 (char*,unsigned int,int /*<<< orphan*/ *,char*,size_t,char*,unsigned int) ; 
 int FUNC3 (char*,unsigned int,int /*<<< orphan*/ *,char*,size_t,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 size_t FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC10(const u8 *mac_init, const u8 *mac_resp,
			     const u8 *Mx, size_t Mx_len,
			     const u8 *Nx, size_t Nx_len,
			     const char *code,
			     const u8 *Kx, size_t Kx_len,
			     u8 *z, unsigned int hash_len)
{
	u8 salt[DPP_MAX_HASH_LEN], prk[DPP_MAX_HASH_LEN];
	int res;
	u8 *info, *pos;
	size_t info_len;

	/* z = HKDF(<>, MAC-Initiator | MAC-Responder | M.x | N.x | code, K.x)
	 */

	/* HKDF-Extract(<>, IKM=K.x) */
	FUNC7(salt, 0, hash_len);
	if (FUNC0(hash_len, salt, hash_len, Kx, Kx_len, prk) < 0)
		return -1;
	FUNC9(MSG_DEBUG, "DPP: PRK = HKDF-Extract(<>, IKM)",
			prk, hash_len);
	info_len = 2 * ETH_ALEN + Mx_len + Nx_len + FUNC8(code);
	info = FUNC5(info_len);
	if (!info)
		return -1;
	pos = info;
	FUNC6(pos, mac_init, ETH_ALEN);
	pos += ETH_ALEN;
	FUNC6(pos, mac_resp, ETH_ALEN);
	pos += ETH_ALEN;
	FUNC6(pos, Mx, Mx_len);
	pos += Mx_len;
	FUNC6(pos, Nx, Nx_len);
	pos += Nx_len;
	FUNC6(pos, code, FUNC8(code));

	/* HKDF-Expand(PRK, info, L) */
	if (hash_len == 32)
		res = FUNC1(prk, hash_len, NULL, info, info_len,
				      z, hash_len);
	else if (hash_len == 48)
		res = FUNC2(prk, hash_len, NULL, info, info_len,
				      z, hash_len);
	else if (hash_len == 64)
		res = FUNC3(prk, hash_len, NULL, info, info_len,
				      z, hash_len);
	else
		res = -1;
	FUNC4(info);
	FUNC7(prk, 0, hash_len);
	if (res < 0)
		return -1;

	FUNC9(MSG_DEBUG, "DPP: z = HKDF-Expand(PRK, info, L)",
			z, hash_len);
	return 0;
}