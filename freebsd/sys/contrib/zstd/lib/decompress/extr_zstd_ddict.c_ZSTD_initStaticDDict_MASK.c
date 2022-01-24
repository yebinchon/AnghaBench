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
typedef  scalar_t__ ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  const ZSTD_DDict ;

/* Variables and functions */
 scalar_t__ ZSTD_dlm_byCopy ; 
 scalar_t__ ZSTD_dlm_byRef ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const,void const*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const,void const*,size_t) ; 

const ZSTD_DDict* FUNC4(
                                void* sBuffer, size_t sBufferSize,
                                const void* dict, size_t dictSize,
                                ZSTD_dictLoadMethod_e dictLoadMethod,
                                ZSTD_dictContentType_e dictContentType)
{
    size_t const neededSpace = sizeof(ZSTD_DDict)
                             + (dictLoadMethod == ZSTD_dlm_byRef ? 0 : dictSize);
    ZSTD_DDict* const ddict = (ZSTD_DDict*)sBuffer;
    FUNC2(sBuffer != NULL);
    FUNC2(dict != NULL);
    if ((size_t)sBuffer & 7) return NULL;   /* 8-aligned */
    if (sBufferSize < neededSpace) return NULL;
    if (dictLoadMethod == ZSTD_dlm_byCopy) {
        FUNC3(ddict+1, dict, dictSize);  /* local copy */
        dict = ddict+1;
    }
    if (FUNC1( FUNC0(ddict,
                                              dict, dictSize,
                                              ZSTD_dlm_byRef, dictContentType) ))
        return NULL;
    return ddict;
}