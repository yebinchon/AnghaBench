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
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 size_t const FUNC1 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC5(void* result, size_t resultCapacity,
                         void const* compressed, size_t compressedSize,
                         void const* dict, size_t dictSize,
                       ZSTD_dictLoadMethod_e dictLoadMethod,
                         ZSTD_dictContentType_e dictContentType)
{
    ZSTD_DCtx* dctx = FUNC2();
    FUNC0(FUNC1(
            dctx, dict, dictSize, dictLoadMethod, dictContentType));
    size_t const resultSize = FUNC3(
            dctx, result, resultCapacity, compressed, compressedSize);
    FUNC0(resultSize);
    FUNC4(dctx);
    return resultSize;
}