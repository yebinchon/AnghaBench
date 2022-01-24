#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct dpp_authentication {size_t Mx_len; size_t Nx_len; size_t secret_len; int /*<<< orphan*/ * Lx; int /*<<< orphan*/  Lx_len; scalar_t__ own_bi; scalar_t__ peer_bi; int /*<<< orphan*/ * Nx; int /*<<< orphan*/ * Mx; int /*<<< orphan*/  r_nonce; int /*<<< orphan*/  i_nonce; TYPE_1__* curve; } ;
struct TYPE_2__ {size_t nonce_len; } ;

/* Variables and functions */
 int DPP_MAX_HASH_LEN ; 
 int DPP_MAX_NONCE_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ *,unsigned int,char const*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct dpp_authentication *auth, u8 *ke,
			 unsigned int hash_len)
{
	size_t nonce_len;
	u8 nonces[2 * DPP_MAX_NONCE_LEN];
	const char *info_ke = "DPP Key";
	u8 prk[DPP_MAX_HASH_LEN];
	int res;
	const u8 *addr[3];
	size_t len[3];
	size_t num_elem = 0;

	if (!auth->Mx_len || !auth->Nx_len) {
		FUNC5(MSG_DEBUG,
			   "DPP: Mx/Nx not available - cannot derive ke");
		return -1;
	}

	/* ke = HKDF(I-nonce | R-nonce, "DPP Key", M.x | N.x [| L.x]) */

	/* HKDF-Extract(I-nonce | R-nonce, M.x | N.x [| L.x]) */
	nonce_len = auth->curve->nonce_len;
	FUNC2(nonces, auth->i_nonce, nonce_len);
	FUNC2(&nonces[nonce_len], auth->r_nonce, nonce_len);
	addr[num_elem] = auth->Mx;
	len[num_elem] = auth->Mx_len;
	num_elem++;
	addr[num_elem] = auth->Nx;
	len[num_elem] = auth->Nx_len;
	num_elem++;
	if (auth->peer_bi && auth->own_bi) {
		if (!auth->Lx_len) {
			FUNC5(MSG_DEBUG,
				   "DPP: Lx not available - cannot derive ke");
			return -1;
		}
		addr[num_elem] = auth->Lx;
		len[num_elem] = auth->secret_len;
		num_elem++;
	}
	res = FUNC1(hash_len, nonces, 2 * nonce_len,
			      num_elem, addr, len, prk);
	if (res < 0)
		return -1;
	FUNC4(MSG_DEBUG, "DPP: PRK = HKDF-Extract(<>, IKM)",
			prk, hash_len);

	/* HKDF-Expand(PRK, info, L) */
	res = FUNC0(hash_len, prk, hash_len, info_ke, ke, hash_len);
	FUNC3(prk, 0, hash_len);
	if (res < 0)
		return -1;

	FUNC4(MSG_DEBUG, "DPP: ke = HKDF-Expand(PRK, info, L)",
			ke, hash_len);
	return 0;
}