#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* member_0; size_t member_1; int /*<<< orphan*/  pos; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void const* member_0; size_t member_1; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,size_t) ; 
 unsigned int FUNC2 (void const*,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/  ZSTD_c_nbWorkers ; 
 int /*<<< orphan*/  ZSTD_c_overlapLog ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 size_t FUNC8 (void*,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static size_t FUNC11(void* resultBuff, size_t resultBuffCapacity,
                            void* compressedBuff, size_t compressedBuffCapacity,
                      const void* srcBuff, size_t srcBuffSize)
{
    ZSTD_CCtx* const cctx = FUNC6();
    ZSTD_CCtx_params* const cctxParams = FUNC7();
    ZSTD_inBuffer inBuffer = { srcBuff, srcBuffSize, 0 };
    ZSTD_outBuffer outBuffer = { compressedBuff, compressedBuffCapacity, 0 };

    static const int maxClevel = 19;
    size_t const hashLength = FUNC1(128, srcBuffSize);
    unsigned const h32 = FUNC2(srcBuff, hashLength, 0);
    int const cLevel = h32 % maxClevel;

    /* Set parameters */
    FUNC0( FUNC3(cctxParams, ZSTD_c_compressionLevel, cLevel) );
    FUNC0( FUNC3(cctxParams, ZSTD_c_nbWorkers, 2) );
    FUNC0( FUNC3(cctxParams, ZSTD_c_overlapLog, 5) );


    /* Apply parameters */
    FUNC0( FUNC4(cctx, cctxParams) );

    FUNC0 (FUNC5(cctx, &outBuffer, &inBuffer, ZSTD_e_end) );

    FUNC10(cctxParams);
    FUNC9(cctx);

    return FUNC8(resultBuff, resultBuffCapacity, compressedBuff, outBuffer.pos);
}