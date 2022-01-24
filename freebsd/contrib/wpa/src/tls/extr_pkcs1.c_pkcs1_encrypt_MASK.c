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
struct crypto_rsa_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*,struct crypto_rsa_key*,int) ; 
 size_t FUNC1 (struct crypto_rsa_key*) ; 
 scalar_t__ FUNC2 (int,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t*) ; 

int FUNC3(int block_type, struct crypto_rsa_key *key,
		  int use_private, const u8 *in, size_t inlen,
		  u8 *out, size_t *outlen)
{
	size_t modlen;

	modlen = FUNC1(key);

	if (FUNC2(block_type, modlen, in, inlen,
					    out, outlen) < 0)
		return -1;

	return FUNC0(out, modlen, out, outlen, key, use_private);
}