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
struct TYPE_3__ {scalar_t__ const windowSize; } ;
typedef  TYPE_1__ ZSTD_frameHeader ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int ZSTD_WINDOWLOG_MAX ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (TYPE_1__*,void const*,size_t) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  frameParameter_windowTooLarge ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC4(const void* src, size_t srcSize)
{
    U32 const windowSizeMax = 1U << ZSTD_WINDOWLOG_MAX;   /* note : should be user-selectable, but requires an additional parameter (or a dctx) */
    ZSTD_frameHeader zfh;
    size_t const err = FUNC2(&zfh, src, srcSize);
    if (FUNC3(err)) return err;
    FUNC0(err>0, srcSize_wrong);
    FUNC0(zfh.windowSize > windowSizeMax,
                    frameParameter_windowTooLarge);
    return FUNC1((size_t)zfh.windowSize);
}