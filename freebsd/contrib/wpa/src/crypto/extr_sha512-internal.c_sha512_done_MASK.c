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
struct sha512_state {int curlen; int length; unsigned char* buf; int* state; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sha512_state*,unsigned char*) ; 

int FUNC3(struct sha512_state *md, unsigned char *out)
{
	int i;

	if (md->curlen >= sizeof(md->buf))
		return -1;

	/* increase the length of the message */
	md->length += md->curlen * FUNC0(8);

	/* append the '1' bit */
	md->buf[md->curlen++] = (unsigned char) 0x80;

	/* if the length is currently above 112 bytes we append zeros
	 * then compress.  Then we can fall back to padding zeros and length
	 * encoding like normal.
	 */
	if (md->curlen > 112) {
		while (md->curlen < 128) {
			md->buf[md->curlen++] = (unsigned char) 0;
		}
		FUNC2(md, md->buf);
		md->curlen = 0;
	}

	/* pad up to 120 bytes of zeroes
	 * note: that from 112 to 120 is the 64 MSB of the length.  We assume
	 * that you won't hash > 2^64 bits of data... :-)
	 */
	while (md->curlen < 120) {
		md->buf[md->curlen++] = (unsigned char) 0;
	}

	/* store length */
	FUNC1(md->buf + 120, md->length);
	FUNC2(md, md->buf);

	/* copy output */
	for (i = 0; i < 8; i++)
		FUNC1(out + (8 * i), md->state[i]);

	return 0;
}