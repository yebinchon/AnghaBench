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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int,scalar_t__*,size_t,scalar_t__ const*,size_t,scalar_t__*,size_t*) ; 
 scalar_t__ FUNC1 (scalar_t__*,size_t) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 

int FUNC5(u8 generator, const u8 *prime, size_t prime_len, u8 *privkey,
		   u8 *pubkey)
{
	size_t pubkey_len, pad;

	if (FUNC1(privkey, prime_len) < 0)
		return -1;
	if (FUNC2(privkey, prime, prime_len) > 0) {
		/* Make sure private value is smaller than prime */
		privkey[0] = 0;
	}

	pubkey_len = prime_len;
	if (FUNC0(&generator, 1, privkey, prime_len, prime, prime_len,
			   pubkey, &pubkey_len) < 0)
		return -1;
	if (pubkey_len < prime_len) {
		pad = prime_len - pubkey_len;
		FUNC3(pubkey + pad, pubkey, pubkey_len);
		FUNC4(pubkey, 0, pad);
	}

	return 0;
}