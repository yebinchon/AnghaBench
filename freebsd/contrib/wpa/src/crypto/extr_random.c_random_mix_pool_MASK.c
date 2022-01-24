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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int POOL_TAP1 ; 
 int POOL_TAP2 ; 
 int POOL_TAP3 ; 
 int POOL_TAP4 ; 
 int POOL_TAP5 ; 
 int POOL_WORDS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int input_rotate ; 
 int* pool ; 
 int pool_pos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void const*,size_t) ; 

__attribute__((used)) static void FUNC2(const void *buf, size_t len)
{
	static const u32 twist[8] = {
		0x00000000, 0x3b6e20c8, 0x76dc4190, 0x4db26158,
		0xedb88320, 0xd6d6a3e8, 0x9b64c2b0, 0xa00ae278
	};
	const u8 *pos = buf;
	u32 w;

	FUNC1(MSG_EXCESSIVE, "random_mix_pool", buf, len);

	while (len--) {
		w = FUNC0(*pos++, input_rotate & 31);
		input_rotate += pool_pos ? 7 : 14;
		pool_pos = (pool_pos - 1) & POOL_WORDS_MASK;
		w ^= pool[pool_pos];
		w ^= pool[(pool_pos + POOL_TAP1) & POOL_WORDS_MASK];
		w ^= pool[(pool_pos + POOL_TAP2) & POOL_WORDS_MASK];
		w ^= pool[(pool_pos + POOL_TAP3) & POOL_WORDS_MASK];
		w ^= pool[(pool_pos + POOL_TAP4) & POOL_WORDS_MASK];
		w ^= pool[(pool_pos + POOL_TAP5) & POOL_WORDS_MASK];
		pool[pool_pos] = (w >> 3) ^ twist[w & 7];
	}
}