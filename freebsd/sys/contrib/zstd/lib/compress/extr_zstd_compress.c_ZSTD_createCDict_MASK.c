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
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
struct TYPE_4__ {int compressionLevel; } ;
typedef  TYPE_1__ ZSTD_CDict ;

/* Variables and functions */
 int ZSTD_CLEVEL_DEFAULT ; 
 TYPE_1__* FUNC0 (void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 int /*<<< orphan*/  ZSTD_defaultCMem ; 
 int /*<<< orphan*/  ZSTD_dlm_byCopy ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,size_t) ; 

ZSTD_CDict* FUNC2(const void* dict, size_t dictSize, int compressionLevel)
{
    ZSTD_compressionParameters cParams = FUNC1(compressionLevel, 0, dictSize);
    ZSTD_CDict* cdict = FUNC0(dict, dictSize,
                                                  ZSTD_dlm_byCopy, ZSTD_dct_auto,
                                                  cParams, ZSTD_defaultCMem);
    if (cdict)
        cdict->compressionLevel = compressionLevel == 0 ? ZSTD_CLEVEL_DEFAULT : compressionLevel;
    return cdict;
}