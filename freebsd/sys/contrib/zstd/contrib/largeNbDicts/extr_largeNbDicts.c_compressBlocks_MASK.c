#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t nbSlices; int /*<<< orphan*/ * capacities; int /*<<< orphan*/ * slicePtrs; } ;
typedef  TYPE_1__ slice_collection_t ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static size_t FUNC6(size_t* cSizes,   /* optional (can be NULL). If present, must contain at least nbBlocks fields */
                             slice_collection_t dstBlockBuffers,
                             slice_collection_t srcBlockBuffers,
                             ZSTD_CDict* cdict, int cLevel)
{
    size_t const nbBlocks = srcBlockBuffers.nbSlices;
    FUNC5(dstBlockBuffers.nbSlices == srcBlockBuffers.nbSlices);

    ZSTD_CCtx* const cctx = FUNC3();
    FUNC5(cctx != NULL);

    size_t totalCSize = 0;
    for (size_t blockNb=0; blockNb < nbBlocks; blockNb++) {
        size_t cBlockSize;
        if (cdict == NULL) {
            cBlockSize = FUNC1(cctx,
                            dstBlockBuffers.slicePtrs[blockNb], dstBlockBuffers.capacities[blockNb],
                            srcBlockBuffers.slicePtrs[blockNb], srcBlockBuffers.capacities[blockNb],
                            cLevel);
        } else {
            cBlockSize = FUNC2(cctx,
                            dstBlockBuffers.slicePtrs[blockNb], dstBlockBuffers.capacities[blockNb],
                            srcBlockBuffers.slicePtrs[blockNb], srcBlockBuffers.capacities[blockNb],
                            cdict);
        }
        FUNC0(!FUNC4(cBlockSize));
        if (cSizes) cSizes[blockNb] = cBlockSize;
        totalCSize += cBlockSize;
    }
    return totalCSize;
}