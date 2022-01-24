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
typedef  unsigned char u8 ;

/* Variables and functions */
 int SHA1_MAC_LEN ; 
 scalar_t__ FUNC0 (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 size_t FUNC2 (char const*) ; 

int FUNC3(int version, const u8 *key, size_t key_len,
		 const char *label, const u8 *seed, size_t seed_len,
		 u8 *buf, size_t buf_len)
{
	unsigned char counter = 0;
	size_t pos, plen;
	u8 hash[SHA1_MAC_LEN];
	size_t label_len = FUNC2(label);
	u8 extra[2];
	const unsigned char *addr[5];
	size_t len[5];

	addr[0] = hash;
	len[0] = 0;
	addr[1] = (unsigned char *) label;
	len[1] = label_len;
	addr[2] = seed;
	len[2] = seed_len;

	if (version == 0) {
		/*
		 * PRF+(K, S, LEN) = T1 | T2 | ... | Tn
		 * T1 = HMAC-SHA1(K, S | 0x01 | 0x00 | 0x00)
		 * T2 = HMAC-SHA1(K, T1 | S | 0x02 | 0x00 | 0x00)
		 * ...
		 * Tn = HMAC-SHA1(K, Tn-1 | S | n | 0x00 | 0x00)
		 */

		extra[0] = 0;
		extra[1] = 0;

		addr[3] = &counter;
		len[3] = 1;
		addr[4] = extra;
		len[4] = 2;
	} else {
		/*
		 * PRF (K,S,LEN) = T1 | T2 | T3 | T4 | ... where:
		 * T1 = HMAC-SHA1(K, S | LEN | 0x01)
		 * T2 = HMAC-SHA1 (K, T1 | S | LEN | 0x02)
		 * T3 = HMAC-SHA1 (K, T2 | S | LEN | 0x03)
		 * T4 = HMAC-SHA1 (K, T3 | S | LEN | 0x04)
		 *   ...
		 */

		extra[0] = buf_len & 0xff;

		addr[3] = extra;
		len[3] = 1;
		addr[4] = &counter;
		len[4] = 1;
	}

	pos = 0;
	while (pos < buf_len) {
		counter++;
		plen = buf_len - pos;
		if (FUNC0(key, key_len, 5, addr, len, hash) < 0)
			return -1;
		if (plen >= SHA1_MAC_LEN) {
			FUNC1(&buf[pos], hash, SHA1_MAC_LEN);
			pos += SHA1_MAC_LEN;
		} else {
			FUNC1(&buf[pos], hash, plen);
			break;
		}
		len[0] = SHA1_MAC_LEN;
	}

	return 0;
}