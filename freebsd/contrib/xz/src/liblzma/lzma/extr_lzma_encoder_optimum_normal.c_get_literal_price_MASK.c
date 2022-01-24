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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  probability ;
struct TYPE_3__ {int /*<<< orphan*/  literal_pos_mask; int /*<<< orphan*/  literal_context_bits; int /*<<< orphan*/  literal; } ;
typedef  TYPE_1__ lzma_lzma1_encoder ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const,int const) ; 
 int FUNC3 (int /*<<< orphan*/  const* const,int,int) ; 

__attribute__((used)) static uint32_t
FUNC4(const lzma_lzma1_encoder *const coder, const uint32_t pos,
		const uint32_t prev_byte, const bool match_mode,
		uint32_t match_byte, uint32_t symbol)
{
	const probability *const subcoder = FUNC1(coder->literal,
			coder->literal_context_bits, coder->literal_pos_mask,
			pos, prev_byte);

	uint32_t price = 0;

	if (!match_mode) {
		price = FUNC3(subcoder, 8, symbol);
	} else {
		uint32_t offset = 0x100;
		symbol += FUNC0(1) << 8;

		do {
			match_byte <<= 1;

			const uint32_t match_bit = match_byte & offset;
			const uint32_t subcoder_index
					= offset + match_bit + (symbol >> 8);
			const uint32_t bit = (symbol >> 7) & 1;
			price += FUNC2(subcoder[subcoder_index], bit);

			symbol <<= 1;
			offset &= ~(match_byte ^ symbol);

		} while (symbol < (FUNC0(1) << 16));
	}

	return price;
}