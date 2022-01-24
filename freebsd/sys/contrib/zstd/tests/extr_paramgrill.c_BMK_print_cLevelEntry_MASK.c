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
typedef  size_t varInds_t ;
struct TYPE_7__ {int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__ paramValues_t ;
struct TYPE_8__ {int cSize; scalar_t__ dSpeed; scalar_t__ cSpeed; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ BMK_benchResult_t ;

/* Variables and functions */
 double MB_UNIT ; 
 int const NB_LEVELS_TRACKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 size_t strt_ind ; 

__attribute__((used)) static void
FUNC4(FILE* f, const int cLevel,
                      paramValues_t params,
                      const BMK_benchResult_t result, const size_t srcSize)
{
    varInds_t v;
    int first = 1;

    FUNC0(cLevel >= 0);
    FUNC0(cLevel <= NB_LEVELS_TRACKED);
    params = FUNC1(params);

    FUNC3(f, "   {");
    /* print cParams.
     * assumption : all cParams are present and in order in the following range */
    for (v = 0; v <= strt_ind; v++) {
        if (!first) { FUNC3(f, ","); }
        FUNC2(f, v, params.vals[v], 3);
        first = 0;
    }
    /* print comment */
    {   double const ratio = result.cSize ?
                            (double)srcSize / result.cSize : 0;
        double const cSpeedMBps = (double)result.cSpeed / MB_UNIT;
        double const dSpeedMBps = (double)result.dSpeed / MB_UNIT;

        FUNC3(f, " },   /* level %2i:  R=%5.3f at %5.1f MB/s - %5.1f MB/s */\n",
                             cLevel, ratio, cSpeedMBps, dSpeedMBps);
    }
}