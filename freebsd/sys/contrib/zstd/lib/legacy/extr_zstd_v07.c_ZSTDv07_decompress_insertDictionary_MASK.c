#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* dictID; } ;
typedef  TYPE_1__ ZSTDv07_DCtx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (char const*) ; 
 scalar_t__ const ZSTDv07_DICT_MAGIC ; 
 scalar_t__ FUNC2 (size_t const) ; 
 size_t FUNC3 (TYPE_1__*,void const*,size_t) ; 
 size_t FUNC4 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC5(ZSTDv07_DCtx* dctx, const void* dict, size_t dictSize)
{
    if (dictSize < 8) return FUNC4(dctx, dict, dictSize);
    {   U32 const magic = FUNC1(dict);
        if (magic != ZSTDv07_DICT_MAGIC) {
            return FUNC4(dctx, dict, dictSize);   /* pure content mode */
    }   }
    dctx->dictID = FUNC1((const char*)dict + 4);

    /* load entropy tables */
    dict = (const char*)dict + 8;
    dictSize -= 8;
    {   size_t const eSize = FUNC3(dctx, dict, dictSize);
        if (FUNC2(eSize)) return FUNC0(dictionary_corrupted);
        dict = (const char*)dict + eSize;
        dictSize -= eSize;
    }

    /* reference dictionary content */
    return FUNC4(dctx, dict, dictSize);
}