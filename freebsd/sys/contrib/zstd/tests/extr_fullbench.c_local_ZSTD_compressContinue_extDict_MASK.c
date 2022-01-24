#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_4__ {int /*<<< orphan*/  cParams; TYPE_2__ fParams; } ;
typedef  TYPE_1__ ZSTD_parameters ;
typedef  TYPE_2__ ZSTD_frameParameters ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FIRST_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t const) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 int /*<<< orphan*/  g_zcc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int) ; 

__attribute__((used)) static size_t
FUNC7(const void* src, size_t srcSize,
                                    void* dst, size_t dstCapacity,
                                    void* payload)
{
    BYTE firstBlockBuf[FIRST_BLOCK_SIZE];

    ZSTD_parameters p;
    ZSTD_frameParameters const f = { 1, 0, 0 };
    p.fParams = f;
    p.cParams = *(ZSTD_compressionParameters*)payload;
    FUNC1(g_zcc, NULL, 0, p, srcSize);
    FUNC6(firstBlockBuf, src, FIRST_BLOCK_SIZE);

    {   size_t const compressResult = FUNC2(g_zcc,
                                            dst, dstCapacity,
                                            firstBlockBuf, FIRST_BLOCK_SIZE);
        if (FUNC5(compressResult)) {
            FUNC0("local_ZSTD_compressContinue_extDict error : %s\n",
                    FUNC4(compressResult));
            return compressResult;
        }
        dst = (BYTE*)dst + compressResult;
        dstCapacity -= compressResult;
    }
    return FUNC3(g_zcc, dst, dstCapacity,
                            (const BYTE*)src + FIRST_BLOCK_SIZE,
                            srcSize - FIRST_BLOCK_SIZE);
}