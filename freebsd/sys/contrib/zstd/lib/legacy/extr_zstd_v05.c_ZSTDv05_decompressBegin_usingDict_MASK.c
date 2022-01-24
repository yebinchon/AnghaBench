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
typedef  int /*<<< orphan*/  ZSTDv05_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

size_t FUNC4(ZSTDv05_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t errorCode;
    errorCode = FUNC1(dctx);
    if (FUNC3(errorCode)) return errorCode;

    if (dict && dictSize) {
        errorCode = FUNC2(dctx, dict, dictSize);
        if (FUNC3(errorCode)) return FUNC0(dictionary_corrupted);
    }

    return 0;
}