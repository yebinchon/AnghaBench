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
typedef  int /*<<< orphan*/  ZSTD_matchState_t ;
typedef  int /*<<< orphan*/  ZSTD_dictTableLoadMethod_e ;
typedef  scalar_t__ ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
typedef  int /*<<< orphan*/  ZSTD_compressedBlockState_t ;
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ZSTD_MAGIC_DICTIONARY ; 
 scalar_t__ ZSTD_dct_auto ; 
 scalar_t__ ZSTD_dct_fullDict ; 
 scalar_t__ ZSTD_dct_rawContent ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dictionary_wrong ; 

__attribute__((used)) static size_t
FUNC7(ZSTD_compressedBlockState_t* bs,
                               ZSTD_matchState_t* ms,
                               ZSTD_cwksp* ws,
                         const ZSTD_CCtx_params* params,
                         const void* dict, size_t dictSize,
                               ZSTD_dictContentType_e dictContentType,
                               ZSTD_dictTableLoadMethod_e dtlm,
                               void* workspace)
{
    FUNC0(4, "ZSTD_compress_insertDictionary (dictSize=%u)", (U32)dictSize);
    if ((dict==NULL) || (dictSize<8)) {
        FUNC2(dictContentType == ZSTD_dct_fullDict, dictionary_wrong);
        return 0;
    }

    FUNC5(bs);

    /* dict restricted modes */
    if (dictContentType == ZSTD_dct_rawContent)
        return FUNC3(ms, ws, params, dict, dictSize, dtlm);

    if (FUNC1(dict) != ZSTD_MAGIC_DICTIONARY) {
        if (dictContentType == ZSTD_dct_auto) {
            FUNC0(4, "raw content dictionary detected");
            return FUNC3(
                ms, ws, params, dict, dictSize, dtlm);
        }
        FUNC2(dictContentType == ZSTD_dct_fullDict, dictionary_wrong);
        FUNC6(0);   /* impossible */
    }

    /* dict as full zstd dictionary */
    return FUNC4(
        bs, ms, ws, params, dict, dictSize, dtlm, workspace);
}