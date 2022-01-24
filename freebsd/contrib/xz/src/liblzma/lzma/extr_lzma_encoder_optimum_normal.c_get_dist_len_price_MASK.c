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
struct TYPE_3__ {size_t** dist_prices; size_t** dist_slot_prices; size_t* align_prices; int /*<<< orphan*/  match_len_encoder; } ;
typedef  TYPE_1__ lzma_lzma1_encoder ;

/* Variables and functions */
 size_t const ALIGN_MASK ; 
 size_t const FULL_DISTANCES ; 
 size_t FUNC0 (size_t const) ; 
 size_t FUNC1 (size_t const) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t const,size_t const) ; 

__attribute__((used)) static inline uint32_t
FUNC3(const lzma_lzma1_encoder *const coder, const uint32_t dist,
		const uint32_t len, const uint32_t pos_state)
{
	const uint32_t dist_state = FUNC1(len);
	uint32_t price;

	if (dist < FULL_DISTANCES) {
		price = coder->dist_prices[dist_state][dist];
	} else {
		const uint32_t dist_slot = FUNC0(dist);
		price = coder->dist_slot_prices[dist_state][dist_slot]
				+ coder->align_prices[dist & ALIGN_MASK];
	}

	price += FUNC2(&coder->match_len_encoder, len, pos_state);

	return price;
}