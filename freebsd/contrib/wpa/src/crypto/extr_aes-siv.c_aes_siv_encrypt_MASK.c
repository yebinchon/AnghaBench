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
 int AES_BLOCK_SIZE ; 
 int FUNC0 (int const**) ; 
 int FUNC1 (int const*,size_t,int*,int*,size_t) ; 
 scalar_t__ FUNC2 (int const*,size_t,size_t,int const**,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,size_t) ; 

int FUNC4(const u8 *key, size_t key_len,
		    const u8 *pw, size_t pwlen,
		    size_t num_elem, const u8 *addr[], const size_t *len,
		    u8 *out)
{
	const u8 *_addr[6];
	size_t _len[6];
	const u8 *k1, *k2;
	u8 v[AES_BLOCK_SIZE];
	size_t i;
	u8 *iv, *crypt_pw;

	if (num_elem > FUNC0(_addr) - 1 ||
	    (key_len != 32 && key_len != 48 && key_len != 64))
		return -1;

	key_len /= 2;
	k1 = key;
	k2 = key + key_len;

	for (i = 0; i < num_elem; i++) {
		_addr[i] = addr[i];
		_len[i] = len[i];
	}
	_addr[num_elem] = pw;
	_len[num_elem] = pwlen;

	if (FUNC2(k1, key_len, num_elem + 1, _addr, _len, v))
		return -1;

	iv = out;
	crypt_pw = out + AES_BLOCK_SIZE;

	FUNC3(iv, v, AES_BLOCK_SIZE);
	FUNC3(crypt_pw, pw, pwlen);

	/* zero out 63rd and 31st bits of ctr (from right) */
	v[8] &= 0x7f;
	v[12] &= 0x7f;
	return FUNC1(k2, key_len, v, crypt_pw, pwlen);
}