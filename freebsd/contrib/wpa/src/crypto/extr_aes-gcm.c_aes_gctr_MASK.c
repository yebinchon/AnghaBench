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
 int /*<<< orphan*/  FUNC0 (void*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*) ; 

__attribute__((used)) static void FUNC4(void *aes, const u8 *icb, const u8 *x, size_t xlen, u8 *y)
{
	size_t i, n, last;
	u8 cb[AES_BLOCK_SIZE], tmp[AES_BLOCK_SIZE];
	const u8 *xpos = x;
	u8 *ypos = y;

	if (xlen == 0)
		return;

	n = xlen / 16;

	FUNC2(cb, icb, AES_BLOCK_SIZE);
	/* Full blocks */
	for (i = 0; i < n; i++) {
		FUNC0(aes, cb, ypos);
		FUNC3(ypos, xpos);
		xpos += AES_BLOCK_SIZE;
		ypos += AES_BLOCK_SIZE;
		FUNC1(cb);
	}

	last = x + xlen - xpos;
	if (last) {
		/* Last, partial block */
		FUNC0(aes, cb, tmp);
		for (i = 0; i < last; i++)
			*ypos++ = *xpos++ ^ tmp[i];
	}
}