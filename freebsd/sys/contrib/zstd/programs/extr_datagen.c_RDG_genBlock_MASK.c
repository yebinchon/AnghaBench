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
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (scalar_t__*) ; 
 scalar_t__ const FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC6(void* buffer, size_t buffSize, size_t prefixSize,
                         double matchProba, const BYTE* ldt, U32* seedPtr)
{
    BYTE* const buffPtr = (BYTE*)buffer;
    U32 const matchProba32 = (U32)(32768 * matchProba);
    size_t pos = prefixSize;
    U32 prevOffset = 1;

    /* special case : sparse content */
    while (matchProba >= 1.0) {
        size_t size0 = FUNC2(seedPtr) & 3;
        size0  = (size_t)1 << (16 + size0 * 2);
        size0 += FUNC2(seedPtr) & (size0-1);   /* because size0 is power of 2*/
        if (buffSize < pos + size0) {
            FUNC5(buffPtr+pos, 0, buffSize-pos);
            return;
        }
        FUNC5(buffPtr+pos, 0, size0);
        pos += size0;
        buffPtr[pos-1] = FUNC1(seedPtr, ldt);
        continue;
    }

    /* init */
    if (pos==0) buffPtr[0] = FUNC1(seedPtr, ldt), pos=1;

    /* Generate compressible data */
    while (pos < buffSize) {
        /* Select : Literal (char) or Match (within 32K) */
        if (FUNC3(seedPtr) < matchProba32) {
            /* Copy (within 32K) */
            U32 const length = FUNC4(seedPtr) + 4;
            U32 const d = (U32) FUNC0(pos + length , buffSize);
            U32 const repeatOffset = (FUNC2(seedPtr) & 15) == 2;
            U32 const randOffset = FUNC3(seedPtr) + 1;
            U32 const offset = repeatOffset ? prevOffset : (U32) FUNC0(randOffset , pos);
            size_t match = pos - offset;
            while (pos < d) { buffPtr[pos++] = buffPtr[match++];   /* correctly manages overlaps */ }
            prevOffset = offset;
        } else {
            /* Literal (noise) */
            U32 const length = FUNC4(seedPtr);
            U32 const d = (U32) FUNC0(pos + length, buffSize);
            while (pos < d) { buffPtr[pos++] = FUNC1(seedPtr, ldt); }
    }   }
}