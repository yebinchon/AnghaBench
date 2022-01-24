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
 int SHA1_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const u8 *pw, size_t pw_len, const u8 *salt,
			  size_t salt_len, u8 id, unsigned int iter,
			  size_t out_len, u8 *out)
{
	unsigned int u, v, S_len, P_len, i;
	u8 *D = NULL, *I = NULL, *B = NULL, *pos;
	int res = -1;

	/* RFC 7292, B.2 */
	u = SHA1_MAC_LEN;
	v = 64;

	/* D = copies of ID */
	D = FUNC3(v);
	if (!D)
		goto done;
	FUNC5(D, id, v);

	/* S = copies of salt; P = copies of password, I = S || P */
	S_len = v * ((salt_len + v - 1) / v);
	P_len = v * ((pw_len + v - 1) / v);
	I = FUNC3(S_len + P_len);
	if (!I)
		goto done;
	pos = I;
	if (salt_len) {
		for (i = 0; i < S_len; i++)
			*pos++ = salt[i % salt_len];
	}
	if (pw_len) {
		for (i = 0; i < P_len; i++)
			*pos++ = pw[i % pw_len];
	}

	B = FUNC3(v);
	if (!B)
		goto done;

	for (;;) {
		u8 hash[SHA1_MAC_LEN];
		const u8 *addr[2];
		size_t len[2];

		addr[0] = D;
		len[0] = v;
		addr[1] = I;
		len[1] = S_len + P_len;
		if (FUNC6(2, addr, len, hash) < 0)
			goto done;

		addr[0] = hash;
		len[0] = SHA1_MAC_LEN;
		for (i = 1; i < iter; i++) {
			if (FUNC6(1, addr, len, hash) < 0)
				goto done;
		}

		if (out_len <= u) {
			FUNC4(out, hash, out_len);
			res = 0;
			goto done;
		}

		FUNC4(out, hash, u);
		out += u;
		out_len -= u;

		/* I_j = (I_j + B + 1) mod 2^(v*8) */
		/* B = copies of Ai (final hash value) */
		for (i = 0; i < v; i++)
			B[i] = hash[i % u];
		FUNC1(B, v);
		for (i = 0; i < S_len + P_len; i += v)
			FUNC0(&I[i], B, v);
	}

done:
	FUNC2(B);
	FUNC2(I);
	FUNC2(D);
	return res;
}