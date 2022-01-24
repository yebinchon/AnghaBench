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
typedef  int /*<<< orphan*/  uint8_t ;
struct blocks8 {void** blk; } ;
typedef  void* __m128i ;

/* Variables and functions */
 size_t AES_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (void* const*) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*) ; 
 void* FUNC2 (int,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,void const*,void*,void*,void*,void*,void*,void*,void*,void*,void**) ; 

void
FUNC4(int rounds, const void *key_schedule, size_t len,
    const uint8_t *from, uint8_t *to)
{
	__m128i tot;
	__m128i tout[8];
	struct blocks8 *top;
	const struct blocks8 *blks;
	size_t i, cnt;

	cnt = len / AES_BLOCK_LEN / 8;
	for (i = 0; i < cnt; i++) {
		blks = (const struct blocks8 *)from;
		top = (struct blocks8 *)to;
		FUNC3(rounds - 1, key_schedule, blks->blk[0], blks->blk[1],
		    blks->blk[2], blks->blk[3], blks->blk[4], blks->blk[5],
		    blks->blk[6], blks->blk[7], tout);
		top->blk[0] = tout[0];
		top->blk[1] = tout[1];
		top->blk[2] = tout[2];
		top->blk[3] = tout[3];
		top->blk[4] = tout[4];
		top->blk[5] = tout[5];
		top->blk[6] = tout[6];
		top->blk[7] = tout[7];
		from += AES_BLOCK_LEN * 8;
		to += AES_BLOCK_LEN * 8;
	}
	i *= 8;
	cnt = len / AES_BLOCK_LEN;
	for (; i < cnt; i++) {
		tot = FUNC2(rounds - 1, key_schedule,
		    FUNC0((const __m128i *)from));
		FUNC1((__m128i *)to, tot);
		from += AES_BLOCK_LEN;
		to += AES_BLOCK_LEN;
	}
}