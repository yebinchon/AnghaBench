#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_3__ {size_t table_size; size_t* counters; size_t** prices; int /*<<< orphan*/  high; int /*<<< orphan*/ * mid; int /*<<< orphan*/ * low; int /*<<< orphan*/  choice2; int /*<<< orphan*/  choice; } ;
typedef  TYPE_1__ lzma_length_encoder ;

/* Variables and functions */
 int /*<<< orphan*/  LEN_HIGH_BITS ; 
 int /*<<< orphan*/  LEN_LOW_BITS ; 
 size_t LEN_LOW_SYMBOLS ; 
 int /*<<< orphan*/  LEN_MID_BITS ; 
 size_t LEN_MID_SYMBOLS ; 
 size_t const FUNC0 (int /*<<< orphan*/ ) ; 
 size_t const FUNC1 (int /*<<< orphan*/ ) ; 
 size_t const FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC3(lzma_length_encoder *lc, const uint32_t pos_state)
{
	const uint32_t table_size = lc->table_size;
	lc->counters[pos_state] = table_size;

	const uint32_t a0 = FUNC0(lc->choice);
	const uint32_t a1 = FUNC1(lc->choice);
	const uint32_t b0 = a1 + FUNC0(lc->choice2);
	const uint32_t b1 = a1 + FUNC1(lc->choice2);
	uint32_t *const prices = lc->prices[pos_state];

	uint32_t i;
	for (i = 0; i < table_size && i < LEN_LOW_SYMBOLS; ++i)
		prices[i] = a0 + FUNC2(lc->low[pos_state],
				LEN_LOW_BITS, i);

	for (; i < table_size && i < LEN_LOW_SYMBOLS + LEN_MID_SYMBOLS; ++i)
		prices[i] = b0 + FUNC2(lc->mid[pos_state],
				LEN_MID_BITS, i - LEN_LOW_SYMBOLS);

	for (; i < table_size; ++i)
		prices[i] = b1 + FUNC2(lc->high, LEN_HIGH_BITS,
				i - LEN_LOW_SYMBOLS - LEN_MID_SYMBOLS);

	return;
}