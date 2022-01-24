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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int size; int /*<<< orphan*/  sons_count; scalar_t__ hash_count; int /*<<< orphan*/ * son; int /*<<< orphan*/ * hash; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ lzma_mf ;
typedef  int /*<<< orphan*/  lzma_lz_options ;
typedef  int /*<<< orphan*/  lzma_coder ;

/* Variables and functions */
 int UINT64_MAX ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

extern uint64_t
FUNC1(const lzma_lz_options *lz_options)
{
	// Old buffers must not exist when calling lz_encoder_prepare().
	lzma_mf mf = {
		.buffer = NULL,
		.hash = NULL,
		.son = NULL,
		.hash_count = 0,
		.sons_count = 0,
	};

	// Setup the size information into mf.
	if (FUNC0(&mf, NULL, lz_options))
		return UINT64_MAX;

	// Calculate the memory usage.
	return ((uint64_t)(mf.hash_count) + mf.sons_count) * sizeof(uint32_t)
			+ mf.size + sizeof(lzma_coder);
}