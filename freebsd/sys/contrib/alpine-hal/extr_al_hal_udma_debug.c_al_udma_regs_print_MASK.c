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
typedef  scalar_t__ uint32_t ;
struct al_udma {scalar_t__ type; } ;

/* Variables and functions */
 unsigned int AL_UDMA_DEBUG_AXI ; 
 unsigned int AL_UDMA_DEBUG_COMP ; 
 unsigned int AL_UDMA_DEBUG_DWRR ; 
 unsigned int AL_UDMA_DEBUG_FEATURE ; 
 unsigned int AL_UDMA_DEBUG_GENERAL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int AL_UDMA_DEBUG_RATE_LIMITER ; 
 unsigned int AL_UDMA_DEBUG_READ ; 
 unsigned int AL_UDMA_DEBUG_STAT ; 
 unsigned int AL_UDMA_DEBUG_STREAM_RATE_LIMITER ; 
 unsigned int AL_UDMA_DEBUG_WRITE ; 
 scalar_t__ DMA_MAX_Q ; 
 scalar_t__ UDMA_TX ; 
 int /*<<< orphan*/  FUNC1 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC2 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC3 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC4 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC5 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC6 (struct al_udma*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC8 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC9 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC10 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC11 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC12 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC13 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC14 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC15 (struct al_udma*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC17 (struct al_udma*) ; 
 int /*<<< orphan*/  FUNC18 (struct al_udma*) ; 

void FUNC19(struct al_udma *udma, unsigned int mask)
{
	uint32_t i;

	if (!udma)
		return;

	if (udma->type == UDMA_TX) {
		if (mask & AL_UDMA_DEBUG_AXI)
			FUNC1(udma);
		if (mask & AL_UDMA_DEBUG_GENERAL)
			FUNC5(udma);
		if (mask & AL_UDMA_DEBUG_READ)
			FUNC8(udma);
		if (mask & AL_UDMA_DEBUG_DWRR)
			FUNC3(udma);
		if (mask & AL_UDMA_DEBUG_RATE_LIMITER)
			FUNC7(udma);
		if (mask & AL_UDMA_DEBUG_STREAM_RATE_LIMITER)
			FUNC10(udma);
		if (mask & AL_UDMA_DEBUG_COMP)
			FUNC2(udma);
		if (mask & AL_UDMA_DEBUG_STAT)
			FUNC9(udma);
		if (mask & AL_UDMA_DEBUG_FEATURE)
			FUNC4(udma);
		for (i = 0; i < DMA_MAX_Q; i++) {
			if (mask & FUNC0(i))
				FUNC6(udma, i);
		}
	} else {
		if (mask & AL_UDMA_DEBUG_AXI)
			FUNC11(udma);
		if (mask & AL_UDMA_DEBUG_GENERAL)
			FUNC14(udma);
		if (mask & AL_UDMA_DEBUG_READ)
			FUNC16(udma);
		if (mask & AL_UDMA_DEBUG_WRITE)
			FUNC18(udma);
		if (mask & AL_UDMA_DEBUG_COMP)
			FUNC12(udma);
		if (mask & AL_UDMA_DEBUG_STAT)
			FUNC17(udma);
		if (mask & AL_UDMA_DEBUG_FEATURE)
			FUNC13(udma);
		for (i = 0; i < DMA_MAX_Q; i++) {
			if (mask & FUNC0(i))
				FUNC15(udma, i);
		}
	}
}