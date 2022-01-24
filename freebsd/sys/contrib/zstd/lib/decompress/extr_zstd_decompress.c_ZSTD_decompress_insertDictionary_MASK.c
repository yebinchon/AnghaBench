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
struct TYPE_4__ {int litEntropy; int fseEntropy; int /*<<< orphan*/  entropy; void* dictID; } ;
typedef  TYPE_1__ ZSTD_DCtx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ZSTD_FRAMEIDSIZE ; 
 scalar_t__ const ZSTD_MAGIC_DICTIONARY ; 
 int /*<<< orphan*/  FUNC2 (size_t const) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC4 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC5(ZSTD_DCtx* dctx, const void* dict, size_t dictSize)
{
    if (dictSize < 8) return FUNC4(dctx, dict, dictSize);
    {   U32 const magic = FUNC0(dict);
        if (magic != ZSTD_MAGIC_DICTIONARY) {
            return FUNC4(dctx, dict, dictSize);   /* pure content mode */
    }   }
    dctx->dictID = FUNC0((const char*)dict + ZSTD_FRAMEIDSIZE);

    /* load entropy tables */
    {   size_t const eSize = FUNC3(&dctx->entropy, dict, dictSize);
        FUNC1(FUNC2(eSize), dictionary_corrupted);
        dict = (const char*)dict + eSize;
        dictSize -= eSize;
    }
    dctx->litEntropy = dctx->fseEntropy = 1;

    /* reference dictionary content */
    return FUNC4(dctx, dict, dictSize);
}