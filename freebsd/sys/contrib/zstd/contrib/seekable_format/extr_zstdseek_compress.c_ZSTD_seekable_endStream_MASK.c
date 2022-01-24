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
struct TYPE_4__ {int writingSeekTable; int /*<<< orphan*/  framelog; scalar_t__ frameDSize; } ;
typedef  TYPE_1__ ZSTD_seekable_CStream ;
typedef  int /*<<< orphan*/  ZSTD_outBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t const) ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

size_t FUNC4(ZSTD_seekable_CStream* zcs, ZSTD_outBuffer* output)
{
    if (!zcs->writingSeekTable && zcs->frameDSize) {
        const size_t endFrame = FUNC1(zcs, output);
        if (FUNC0(endFrame)) return endFrame;
        /* return an accurate size hint */
        if (endFrame) return endFrame + FUNC2(&zcs->framelog);
    }

    zcs->writingSeekTable = 1;

    return FUNC3(&zcs->framelog, output);
}