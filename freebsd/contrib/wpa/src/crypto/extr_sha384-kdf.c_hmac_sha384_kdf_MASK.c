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
typedef  int u8 ;

/* Variables and functions */
 int SHA384_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (int const*,size_t,int,unsigned char const**,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (char const*) ; 

int FUNC5(const u8 *secret, size_t secret_len,
		    const char *label, const u8 *seed, size_t seed_len,
		    u8 *out, size_t outlen)
{
	u8 T[SHA384_MAC_LEN];
	u8 iter = 1;
	const unsigned char *addr[4];
	size_t len[4];
	size_t pos, clen;

	addr[0] = T;
	len[0] = SHA384_MAC_LEN;
	if (label) {
		addr[1] = (const unsigned char *) label;
		len[1] = FUNC4(label) + 1;
	} else {
		addr[1] = (const u8 *) "";
		len[1] = 0;
	}
	addr[2] = seed;
	len[2] = seed_len;
	addr[3] = &iter;
	len[3] = 1;

	if (FUNC1(secret, secret_len, 3, &addr[1], &len[1], T) < 0)
		return -1;

	pos = 0;
	for (;;) {
		clen = outlen - pos;
		if (clen > SHA384_MAC_LEN)
			clen = SHA384_MAC_LEN;
		FUNC2(out + pos, T, clen);
		pos += clen;

		if (pos == outlen)
			break;

		if (iter == 255) {
			FUNC3(out, 0, outlen);
			FUNC0(T, SHA384_MAC_LEN);
			return -1;
		}
		iter++;

		if (FUNC1(secret, secret_len, 4, addr, len, T) < 0)
		{
			FUNC3(out, 0, outlen);
			FUNC0(T, SHA384_MAC_LEN);
			return -1;
		}
	}

	FUNC0(T, SHA384_MAC_LEN);
	return 0;
}