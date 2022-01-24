#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int tableLen; TYPE_1__* entries; } ;
struct TYPE_8__ {TYPE_2__ seekTable; } ;
typedef  TYPE_3__ ZSTD_seekable ;
struct TYPE_6__ {size_t dOffset; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_3__*,void*,size_t const,size_t) ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  frameIndex_tooLarge ; 

size_t FUNC2(ZSTD_seekable* zs, void* dst, size_t dstSize, unsigned frameIndex)
{
    if (frameIndex >= zs->seekTable.tableLen) {
        return FUNC0(frameIndex_tooLarge);
    }

    {
        size_t const decompressedSize =
                zs->seekTable.entries[frameIndex + 1].dOffset -
                zs->seekTable.entries[frameIndex].dOffset;
        if (dstSize < decompressedSize) {
            return FUNC0(dstSize_tooSmall);
        }
        return FUNC1(
                zs, dst, decompressedSize,
                zs->seekTable.entries[frameIndex].dOffset);
    }
}