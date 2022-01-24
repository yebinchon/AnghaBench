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
struct crypto_rsa_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int const*,size_t,int*,size_t*,struct crypto_rsa_key*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct crypto_rsa_key *key,
				  const u8 *in, size_t inlen,
				  u8 *out, size_t *outlen)
{
	int res;
	u8 *pos, *end;

	res = FUNC0(in, inlen, out, outlen, key, 1);
	if (res)
		return res;

	if (*outlen < 2 || out[0] != 0 || out[1] != 2)
		return -1;

	/* Skip PS (pseudorandom non-zero octets) */
	pos = out + 2;
	end = out + *outlen;
	while (*pos && pos < end)
		pos++;
	if (pos == end)
		return -1;
	if (pos - out - 2 < 8) {
		/* PKCS #1 v1.5, 8.1: At least eight octets long PS */
		FUNC2(MSG_INFO, "LibTomCrypt: Too short padding");
		return -1;
	}
	pos++;

	*outlen -= pos - out;

	/* Strip PKCS #1 header */
	FUNC1(out, pos, *outlen);

	return 0;
}