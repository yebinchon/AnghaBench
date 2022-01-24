#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_Sequence ;
struct TYPE_6__ {int collectSequences; size_t seqIndex; size_t maxSequences; int /*<<< orphan*/ * seqStart; } ;
struct TYPE_5__ {TYPE_2__ seqCollector; } ;
typedef  TYPE_1__ ZSTD_CCtx ;
typedef  TYPE_2__ SeqCollector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,size_t const,void const*,size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  ZSTD_defaultCMem ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC5(ZSTD_CCtx* zc, ZSTD_Sequence* outSeqs,
    size_t outSeqsSize, const void* src, size_t srcSize)
{
    const size_t dstCapacity = FUNC2(srcSize);
    void* dst = FUNC4(dstCapacity, ZSTD_defaultCMem);
    SeqCollector seqCollector;

    FUNC0(dst == NULL, memory_allocation);

    seqCollector.collectSequences = 1;
    seqCollector.seqStart = outSeqs;
    seqCollector.seqIndex = 0;
    seqCollector.maxSequences = outSeqsSize;
    zc->seqCollector = seqCollector;

    FUNC1(zc, dst, dstCapacity, src, srcSize);
    FUNC3(dst, ZSTD_defaultCMem);
    return zc->seqCollector.seqIndex;
}