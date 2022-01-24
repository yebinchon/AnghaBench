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
struct TYPE_3__ {scalar_t__ align_price_count; int /*<<< orphan*/  dist_align; int /*<<< orphan*/ * align_prices; } ;
typedef  TYPE_1__ lzma_lzma1_encoder ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN_BITS ; 
 size_t ALIGN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC1(lzma_lzma1_encoder *coder)
{
	for (uint32_t i = 0; i < ALIGN_SIZE; ++i)
		coder->align_prices[i] = FUNC0(
				coder->dist_align, ALIGN_BITS, i);

	coder->align_price_count = 0;
	return;
}