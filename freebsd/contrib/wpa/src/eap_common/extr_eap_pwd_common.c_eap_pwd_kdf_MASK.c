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
typedef  int u16 ;
struct crypto_hash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_HASH_ALG_HMAC_SHA256 ; 
 int SHA256_MAC_LEN ; 
 scalar_t__ FUNC0 (struct crypto_hash*,int*,size_t*) ; 
 struct crypto_hash* FUNC1 (int /*<<< orphan*/ ,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_hash*,int const*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,size_t) ; 

__attribute__((used)) static int FUNC5(const u8 *key, size_t keylen, const u8 *label,
		       size_t labellen, u8 *result, size_t resultbitlen)
{
	struct crypto_hash *hash;
	u8 digest[SHA256_MAC_LEN];
	u16 i, ctr, L;
	size_t resultbytelen, len = 0, mdlen;

	resultbytelen = (resultbitlen + 7) / 8;
	ctr = 0;
	L = FUNC3(resultbitlen);
	while (len < resultbytelen) {
		ctr++;
		i = FUNC3(ctr);
		hash = FUNC1(CRYPTO_HASH_ALG_HMAC_SHA256,
					key, keylen);
		if (hash == NULL)
			return -1;
		if (ctr > 1)
			FUNC2(hash, digest, SHA256_MAC_LEN);
		FUNC2(hash, (u8 *) &i, sizeof(u16));
		FUNC2(hash, label, labellen);
		FUNC2(hash, (u8 *) &L, sizeof(u16));
		mdlen = SHA256_MAC_LEN;
		if (FUNC0(hash, digest, &mdlen) < 0)
			return -1;
		if ((len + mdlen) > resultbytelen)
			FUNC4(result + len, digest, resultbytelen - len);
		else
			FUNC4(result + len, digest, mdlen);
		len += mdlen;
	}

	/* since we're expanding to a bit length, mask off the excess */
	if (resultbitlen % 8) {
		u8 mask = 0xff;
		mask <<= (8 - (resultbitlen % 8));
		result[resultbytelen - 1] &= mask;
	}

	return 0;
}