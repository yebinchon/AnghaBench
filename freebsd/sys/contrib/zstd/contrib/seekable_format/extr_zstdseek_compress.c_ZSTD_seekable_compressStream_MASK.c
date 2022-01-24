#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ checksumFlag; } ;
struct TYPE_13__ {size_t maxFrameSize; size_t frameDSize; int /*<<< orphan*/  frameCSize; int /*<<< orphan*/  xxhState; TYPE_1__ framelog; int /*<<< orphan*/  cstream; } ;
typedef  TYPE_2__ ZSTD_seekable_CStream ;
struct TYPE_14__ {size_t pos; } ;
typedef  TYPE_3__ ZSTD_outBuffer ;
struct TYPE_15__ {int pos; size_t size; size_t member_1; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const* const member_0; scalar_t__ src; } ;
typedef  TYPE_4__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 size_t FUNC4 (TYPE_2__*,TYPE_3__*) ; 

size_t FUNC5(ZSTD_seekable_CStream* zcs, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    const BYTE* const inBase = (const BYTE*) input->src + input->pos;
    size_t inLen = input->size - input->pos;

    inLen = FUNC0(inLen, (size_t)(zcs->maxFrameSize - zcs->frameDSize));

    /* if we haven't finished flushing the last frame, don't start writing a new one */
    if (inLen > 0) {
        ZSTD_inBuffer inTmp = { inBase, inLen, 0 };
        size_t const prevOutPos = output->pos;

        size_t const ret = FUNC2(zcs->cstream, output, &inTmp);

        if (zcs->framelog.checksumFlag) {
            FUNC1(&zcs->xxhState, inBase, inTmp.pos);
        }

        zcs->frameCSize += output->pos - prevOutPos;
        zcs->frameDSize += inTmp.pos;

        input->pos += inTmp.pos;

        if (FUNC3(ret)) return ret;
    }

    if (zcs->maxFrameSize == zcs->frameDSize) {
        /* log the frame and start over */
        size_t const ret = FUNC4(zcs, output);
        if (FUNC3(ret)) return ret;

        /* get the client ready for the next frame */
        return (size_t)zcs->maxFrameSize;
    }

    return (size_t)(zcs->maxFrameSize - zcs->frameDSize);
}