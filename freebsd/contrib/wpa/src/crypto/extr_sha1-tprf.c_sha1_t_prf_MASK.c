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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 scalar_t__ FUNC1 (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,size_t) ; 
 size_t FUNC3 (char const*) ; 

int FUNC4(const u8 *key, size_t key_len, const char *label,
	       const u8 *seed, size_t seed_len, u8 *buf, size_t buf_len)
{
	unsigned char counter = 0;
	size_t pos, plen;
	u8 hash[SHA1_MAC_LEN];
	size_t label_len = FUNC3(label);
	u8 output_len[2];
	const unsigned char *addr[5];
	size_t len[5];

	addr[0] = hash;
	len[0] = 0;
	addr[1] = (unsigned char *) label;
	len[1] = label_len + 1;
	addr[2] = seed;
	len[2] = seed_len;
	addr[3] = output_len;
	len[3] = 2;
	addr[4] = &counter;
	len[4] = 1;

	output_len[0] = (buf_len >> 8) & 0xff;
	output_len[1] = buf_len & 0xff;
	pos = 0;
	while (pos < buf_len) {
		counter++;
		plen = buf_len - pos;
		if (FUNC1(key, key_len, 5, addr, len, hash))
			return -1;
		if (plen >= SHA1_MAC_LEN) {
			FUNC2(&buf[pos], hash, SHA1_MAC_LEN);
			pos += SHA1_MAC_LEN;
		} else {
			FUNC2(&buf[pos], hash, plen);
			break;
		}
		len[0] = SHA1_MAC_LEN;
	}

	FUNC0(hash, SHA1_MAC_LEN);

	return 0;
}