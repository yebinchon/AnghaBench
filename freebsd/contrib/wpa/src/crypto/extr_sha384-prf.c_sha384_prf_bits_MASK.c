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
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  length_le ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int SHA384_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (int const*,size_t,int,int const**,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,size_t) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5(const u8 *key, size_t key_len, const char *label,
		    const u8 *data, size_t data_len, u8 *buf,
		    size_t buf_len_bits)
{
	u16 counter = 1;
	size_t pos, plen;
	u8 hash[SHA384_MAC_LEN];
	const u8 *addr[4];
	size_t len[4];
	u8 counter_le[2], length_le[2];
	size_t buf_len = (buf_len_bits + 7) / 8;

	addr[0] = counter_le;
	len[0] = 2;
	addr[1] = (u8 *) label;
	len[1] = FUNC4(label);
	addr[2] = data;
	len[2] = data_len;
	addr[3] = length_le;
	len[3] = sizeof(length_le);

	FUNC0(length_le, buf_len_bits);
	pos = 0;
	while (pos < buf_len) {
		plen = buf_len - pos;
		FUNC0(counter_le, counter);
		if (plen >= SHA384_MAC_LEN) {
			if (FUNC2(key, key_len, 4, addr, len,
					       &buf[pos]) < 0)
				return -1;
			pos += SHA384_MAC_LEN;
		} else {
			if (FUNC2(key, key_len, 4, addr, len,
					       hash) < 0)
				return -1;
			FUNC3(&buf[pos], hash, plen);
			pos += plen;
			break;
		}
		counter++;
	}

	/*
	 * Mask out unused bits in the last octet if it does not use all the
	 * bits.
	 */
	if (buf_len_bits % 8) {
		u8 mask = 0xff << (8 - buf_len_bits % 8);
		buf[pos - 1] &= mask;
	}

	FUNC1(hash, sizeof(hash));

	return 0;
}