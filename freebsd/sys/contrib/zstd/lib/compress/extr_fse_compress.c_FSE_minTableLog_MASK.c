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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static unsigned FUNC2(size_t srcSize, unsigned maxSymbolValue)
{
    U32 minBitsSrc = FUNC0((U32)(srcSize)) + 1;
    U32 minBitsSymbols = FUNC0(maxSymbolValue) + 2;
    U32 minBits = minBitsSrc < minBitsSymbols ? minBitsSrc : minBitsSymbols;
    FUNC1(srcSize > 1); /* Not supported, RLE should be used instead */
    return minBits;
}