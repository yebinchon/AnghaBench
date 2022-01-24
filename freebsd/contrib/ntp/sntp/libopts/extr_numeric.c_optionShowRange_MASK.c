#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char const* pzProgName; int /*<<< orphan*/  (* pUsageProc ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ tOptions ;
struct TYPE_9__ {long const argInt; } ;
struct TYPE_11__ {long const pz_Name; int fOptState; TYPE_1__ optArg; } ;
typedef  TYPE_3__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 long const LONG_MAX ; 
 long const LONG_MIN ; 
 int /*<<< orphan*/  NL ; 
 char* ONE_TAB_STR ; 
 TYPE_2__* OPTPROC_EMIT_LIMIT ; 
 TYPE_2__* OPTPROC_EMIT_USAGE ; 
 int OPTST_SCALED_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  option_usage_fp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int tab_skip_ct ; 
 char* zRange ; 
 char* zRangeAbove ; 
 char* zRangeErr ; 
 char* zRangeExact ; 
 char* zRangeLie ; 
 char* zRangeOnly ; 
 int /*<<< orphan*/  zRangeOr ; 
 char* zRangeScaled ; 
 char* zRangeUpto ; 
 char* zTabHyp ; 
 char* zTabSpace ; 

void
FUNC4(tOptions * pOpts, tOptDesc * pOD, void * rng_table, int rng_ct)
{
    const struct {long const rmin, rmax;} * rng = rng_table;

    char const * pz_indent = zTabHyp + tab_skip_ct;

    /*
     * The range is shown only for full usage requests and an error
     * in this particular option.
     */
    if (pOpts != OPTPROC_EMIT_USAGE) {
        if (pOpts <= OPTPROC_EMIT_LIMIT)
            return;
        pz_indent = ONE_TAB_STR;

        FUNC0(option_usage_fp, zRangeErr, pOpts->pzProgName,
                pOD->pz_Name, pOD->optArg.argInt);
        pz_indent = "";
    }

    if (pOD->fOptState & OPTST_SCALED_NUM)
        FUNC0(option_usage_fp, zRangeScaled, pz_indent);

    FUNC0(option_usage_fp, (rng_ct > 1) ? zRangeLie : zRangeOnly, pz_indent);
    pz_indent = (pOpts != OPTPROC_EMIT_USAGE)
        ? ONE_TAB_STR
        : (zTabSpace + tab_skip_ct);

    for (;;) {
        if (rng->rmax == LONG_MIN)
            FUNC0(option_usage_fp, zRangeExact, pz_indent, rng->rmin);
        else if (rng->rmin == LONG_MIN)
            FUNC0(option_usage_fp, zRangeUpto, pz_indent, rng->rmax);
        else if (rng->rmax == LONG_MAX)
            FUNC0(option_usage_fp, zRangeAbove, pz_indent, rng->rmin);
        else
            FUNC0(option_usage_fp, zRange, pz_indent, rng->rmin,
                    rng->rmax);

        if  (--rng_ct <= 0) {
            FUNC1(NL, option_usage_fp);
            break;
        }
        FUNC2(zRangeOr, option_usage_fp);
        rng++;
    }

    if (pOpts > OPTPROC_EMIT_LIMIT)
        pOpts->pUsageProc(pOpts, EXIT_FAILURE);
}