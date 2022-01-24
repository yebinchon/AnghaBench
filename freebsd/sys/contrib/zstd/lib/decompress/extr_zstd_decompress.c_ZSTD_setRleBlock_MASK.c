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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dstBuffer_null ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static size_t FUNC3(void* dst, size_t dstCapacity,
                               BYTE b,
                               size_t regenSize)
{
    if (dst == NULL) {
        if (regenSize == 0) return 0;
        FUNC0(dstBuffer_null);
    }
    FUNC1(regenSize > dstCapacity, dstSize_tooSmall);
    FUNC2(dst, b, regenSize);
    return regenSize;
}