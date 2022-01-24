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
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int SHA1_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 scalar_t__ FUNC1 (unsigned char const*,size_t,int,unsigned char const**,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,size_t) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const u8 *key, size_t key_len, const char *label,
	     const u8 *data, size_t data_len, u8 *buf, size_t buf_len)
{
	u8 counter = 0;
	size_t pos, plen;
	u8 hash[SHA1_MAC_LEN];
	size_t label_len = FUNC3(label) + 1;
	const unsigned char *addr[3];
	size_t len[3];

	addr[0] = (u8 *) label;
	len[0] = label_len;
	addr[1] = data;
	len[1] = data_len;
	addr[2] = &counter;
	len[2] = 1;

	pos = 0;
	while (pos < buf_len) {
		plen = buf_len - pos;
		if (plen >= SHA1_MAC_LEN) {
			if (FUNC1(key, key_len, 3, addr, len,
					     &buf[pos]))
				return -1;
			pos += SHA1_MAC_LEN;
		} else {
			if (FUNC1(key, key_len, 3, addr, len,
					     hash))
				return -1;
			FUNC2(&buf[pos], hash, plen);
			break;
		}
		counter++;
	}
	FUNC0(hash, sizeof(hash));

	return 0;
}