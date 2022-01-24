#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_frameParameters ;
struct TYPE_7__ {int /*<<< orphan*/  fParams; } ;
struct TYPE_8__ {TYPE_1__ requestedParams; } ;
typedef  TYPE_2__ ZSTD_CStream ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned long long) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 

size_t FUNC5(ZSTD_CStream* zcs,
                                            const ZSTD_CDict* cdict,
                                            ZSTD_frameParameters fParams,
                                            unsigned long long pledgedSrcSize)
{
    FUNC0(4, "ZSTD_initCStream_usingCDict_advanced");
    FUNC1( FUNC3(zcs, ZSTD_reset_session_only) );
    FUNC1( FUNC4(zcs, pledgedSrcSize) );
    zcs->requestedParams.fParams = fParams;
    FUNC1( FUNC2(zcs, cdict) );
    return 0;
}