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
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  scalar_t__ ZSTD_dictContentType_e ;
struct TYPE_3__ {int /*<<< orphan*/  buff; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ FUZZ_dict_t ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC4 (void const*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 size_t FUNC8 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 scalar_t__ ZSTD_dct_auto ; 
 size_t FUNC10 (int /*<<< orphan*/ ,void*,size_t,void*,size_t) ; 
 int /*<<< orphan*/  cctx ; 
 int /*<<< orphan*/  dctx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kMaxClevel ; 
 int /*<<< orphan*/  kMinClevel ; 

__attribute__((used)) static size_t FUNC12(void *result, size_t resultCapacity,
                            void *compressed, size_t compressedCapacity,
                            const void *src, size_t srcSize,
                            FUZZ_dataProducer_t *producer)
{
    ZSTD_dictContentType_e dictContentType = ZSTD_dct_auto;
    FUZZ_dict_t dict = FUNC4(src, srcSize, producer);
    size_t cSize;
    if (FUNC2(producer, 0, 15) == 0) {
        int const cLevel = FUNC1(producer, kMinClevel, kMaxClevel);

        cSize = FUNC9(cctx,
                compressed, compressedCapacity,
                src, srcSize,
                dict.buff, dict.size,
                cLevel);
    } else {
        dictContentType = FUNC2(producer, 0, 2);
        FUNC3(cctx, srcSize, producer);
        /* Disable checksum so we can use sizes smaller than compress bound. */
        FUNC0(FUNC6(cctx, ZSTD_c_checksumFlag, 0));
        FUNC0(FUNC5(
                cctx, dict.buff, dict.size,
                (ZSTD_dictLoadMethod_e)FUNC2(producer, 0, 1),
                dictContentType));
        cSize = FUNC8(cctx, compressed, compressedCapacity, src, srcSize);
    }
    FUNC0(cSize);
    FUNC0(FUNC7(
        dctx, dict.buff, dict.size,
        (ZSTD_dictLoadMethod_e)FUNC2(producer, 0, 1),
        dictContentType));
    {
        size_t const ret = FUNC10(
                dctx, result, resultCapacity, compressed, cSize);
        FUNC11(dict.buff);
        return ret;
    }
}