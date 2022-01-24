#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cParams; } ;
struct TYPE_9__ {TYPE_2__ requestedParams; } ;
typedef  TYPE_1__ ZSTD_CStream ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  TYPE_2__ ZSTD_CCtx_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

size_t FUNC9(ZSTD_CStream* zcs,
                    const void* dict, size_t dictSize, const ZSTD_CDict* cdict,
                    const ZSTD_CCtx_params* params,
                    unsigned long long pledgedSrcSize)
{
    FUNC0(4, "ZSTD_initCStream_internal");
    FUNC1( FUNC4(zcs, ZSTD_reset_session_only) );
    FUNC1( FUNC5(zcs, pledgedSrcSize) );
    FUNC8(!FUNC7(FUNC6(params->cParams)));
    zcs->requestedParams = *params;
    FUNC8(!((dict) && (cdict)));  /* either dict or cdict, not both */
    if (dict) {
        FUNC1( FUNC2(zcs, dict, dictSize) );
    } else {
        /* Dictionary is cleared if !cdict */
        FUNC1( FUNC3(zcs, cdict) );
    }
    return 0;
}