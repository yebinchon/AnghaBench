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
struct TYPE_3__ {scalar_t__ blockType; } ;
typedef  TYPE_1__ blockProperties_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t const FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,unsigned long long*,size_t const) ; 
 size_t ZSTDv07_BLOCKSIZE_ABSOLUTEMAX ; 
 scalar_t__ ZSTDv07_MAGICNUMBER ; 
 size_t ZSTDv07_blockHeaderSize ; 
 size_t FUNC3 (void const*,size_t) ; 
 size_t ZSTDv07_frameHeaderSize_min ; 
 size_t FUNC4 (int /*<<< orphan*/  const*,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 scalar_t__ bt_end ; 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

void FUNC6(const void *src, size_t srcSize, size_t* cSize, unsigned long long* dBound)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    size_t nbBlocks = 0;

    /* check */
    if (srcSize < ZSTDv07_frameHeaderSize_min+ZSTDv07_blockHeaderSize) {
        FUNC2(cSize, dBound, FUNC0(srcSize_wrong));
        return;
    }

    /* Frame Header */
    {   size_t const frameHeaderSize = FUNC3(src, srcSize);
        if (FUNC5(frameHeaderSize)) {
            FUNC2(cSize, dBound, frameHeaderSize);
            return;
        }
        if (FUNC1(src) != ZSTDv07_MAGICNUMBER) {
            FUNC2(cSize, dBound, FUNC0(prefix_unknown));
            return;
        }
        if (srcSize < frameHeaderSize+ZSTDv07_blockHeaderSize) {
            FUNC2(cSize, dBound, FUNC0(srcSize_wrong));
            return;
        }
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }

    /* Loop on each block */
    while (1) {
        blockProperties_t blockProperties;
        size_t const cBlockSize = FUNC4(ip, remainingSize, &blockProperties);
        if (FUNC5(cBlockSize)) {
            FUNC2(cSize, dBound, cBlockSize);
            return;
        }

        ip += ZSTDv07_blockHeaderSize;
        remainingSize -= ZSTDv07_blockHeaderSize;

        if (blockProperties.blockType == bt_end) break;

        if (cBlockSize > remainingSize) {
            FUNC2(cSize, dBound, FUNC0(srcSize_wrong));
            return;
        }

        ip += cBlockSize;
        remainingSize -= cBlockSize;
        nbBlocks++;
    }

    *cSize = ip - (const BYTE*)src;
    *dBound = nbBlocks * ZSTDv07_BLOCKSIZE_ABSOLUTEMAX;
}