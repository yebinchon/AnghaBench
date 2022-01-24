#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  result; int /*<<< orphan*/  params; } ;
typedef  TYPE_1__ winnerInfo_t ;
typedef  int /*<<< orphan*/  paramValues_t ;
typedef  int U64 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BMK_benchResult_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__,size_t const) ; 
 int const CUSTOM_LEVEL ; 
 scalar_t__ TIMED ; 
 unsigned long long TIMELOOP_NANOSEC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  g_time ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int const) ; 

__attribute__((used)) static void
FUNC4(FILE* f, const int cLevel, const BMK_benchResult_t result, const paramValues_t params, const size_t srcSize)
{
    char lvlstr[15] = "Custom Level";
    winnerInfo_t w;
    w.params = params;
    w.result = result;

    FUNC2(f, "\r%79s\r", "");

    if(cLevel != CUSTOM_LEVEL) {
        FUNC3(lvlstr, 15, "  Level %2d  ", cLevel);
    }

    if(TIMED) {
        const U64 mn_in_ns = 60ULL * TIMELOOP_NANOSEC;
        const U64 time_ns = FUNC1(g_time);
        const U64 minutes = time_ns / mn_in_ns;
        FUNC2(f, "%1lu:%2lu:%05.2f - ",
                (unsigned long) minutes / 60,
                (unsigned long) minutes % 60,
                (double)(time_ns - (minutes * mn_in_ns)) / TIMELOOP_NANOSEC );
    }

    FUNC2(f, "/* %s */   ", lvlstr);
    FUNC0(f, w, srcSize);
}