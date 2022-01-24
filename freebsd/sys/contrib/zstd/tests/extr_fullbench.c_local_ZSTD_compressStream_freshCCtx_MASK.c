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
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (void const*,size_t,void*,size_t,void*) ; 

__attribute__((used)) static size_t
FUNC4(const void* src, size_t srcSize,
                          void* dst, size_t dstCapacity,
                          void* payload)
{
    ZSTD_CCtx* const cctx = FUNC0();
    size_t r;
    FUNC2(cctx != NULL);

    r = FUNC3(src, srcSize, dst, dstCapacity, payload);

    FUNC1(cctx);

    return r;
}