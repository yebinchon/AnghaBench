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
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const u8 *key, size_t key_len, const char *label,
			const u8 *data, size_t data_len,
			const u8 *data2, size_t data2_len,
			u8 *buf, size_t buf_len)
{
	u8 counter = 0;
	size_t pos, plen;
	u8 hash[SHA1_MAC_LEN];
	size_t label_len = FUNC2(label) + 1;
	const unsigned char *addr[4];
	size_t len[4];

	addr[0] = (u8 *) label; /* Label | Y */
	len[0] = label_len;
	addr[1] = data; /* Msg[start] */
	len[1] = data_len;
	addr[2] = data2; /* Msg[end] */
	len[2] = data2_len;
	addr[3] = &counter; /* Length */
	len[3] = 1;

	pos = 0;
	while (pos < buf_len) {
		plen = buf_len - pos;
		if (plen >= SHA1_MAC_LEN) {
			if (FUNC0(key, key_len, 4, addr, len,
					     &buf[pos]) < 0)
				return -1;
			pos += SHA1_MAC_LEN;
		} else {
			if (FUNC0(key, key_len, 4, addr, len,
					     hash) < 0)
				return -1;
			FUNC1(&buf[pos], hash, plen);
			break;
		}
		counter++;
	}

	return 0;
}