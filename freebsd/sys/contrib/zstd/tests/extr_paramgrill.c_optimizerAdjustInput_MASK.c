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
typedef  size_t varInds_t ;
struct TYPE_3__ {scalar_t__* vals; } ;
typedef  TYPE_1__ paramValues_t ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 size_t NUM_PARAMS ; 
 scalar_t__ PARAM_UNSET ; 
 scalar_t__ ZSTD_btlazy2 ; 
 int FUNC3 (scalar_t__) ; 
 size_t clog_ind ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int* g_paramNames ; 
 size_t hlog_ind ; 
 int /*<<< orphan*/ * maxtable ; 
 scalar_t__* mintable ; 
 size_t slog_ind ; 
 int /*<<< orphan*/  stderr ; 
 size_t strt_ind ; 
 size_t wlog_ind ; 

__attribute__((used)) static void FUNC5(paramValues_t* pc, const size_t maxBlockSize)
{
    varInds_t v;
    for(v = 0; v < NUM_PARAMS; v++) {
        if(pc->vals[v] != PARAM_UNSET) {
            U32 newval = FUNC2(FUNC1(pc->vals[v], mintable[v]), maxtable[v]);
            if(newval != pc->vals[v]) {
                pc->vals[v] = newval;
                FUNC0("Warning: parameter %s not in valid range, adjusting to ",
                        g_paramNames[v]);
                FUNC4(stderr, v, newval, 0); FUNC0("\n");
            }
        }
    }

    if(pc->vals[wlog_ind] != PARAM_UNSET) {

        U32 sshb = maxBlockSize > 1 ? FUNC3((U32)(maxBlockSize-1)) + 1 : 1;
        /* edge case of highBit not working for 0 */

        if(maxBlockSize < (1ULL << 31) && sshb + 1 < pc->vals[wlog_ind]) {
            U32 adjust = FUNC1(mintable[wlog_ind], sshb);
            if(adjust != pc->vals[wlog_ind]) {
                pc->vals[wlog_ind] = adjust;
                FUNC0("Warning: windowLog larger than src/block size, adjusted to %u\n",
                        (unsigned)pc->vals[wlog_ind]);
            }
        }
    }

    if(pc->vals[wlog_ind] != PARAM_UNSET && pc->vals[clog_ind] != PARAM_UNSET) {
        U32 maxclog;
        if(pc->vals[strt_ind] == PARAM_UNSET || pc->vals[strt_ind] >= (U32)ZSTD_btlazy2) {
            maxclog = pc->vals[wlog_ind] + 1;
        } else {
            maxclog = pc->vals[wlog_ind];
        }

        if(pc->vals[clog_ind] > maxclog) {
            pc->vals[clog_ind] = maxclog;
            FUNC0("Warning: chainlog too much larger than windowLog size, adjusted to %u\n",
                    (unsigned)pc->vals[clog_ind]);
        }
    }

    if(pc->vals[wlog_ind] != PARAM_UNSET && pc->vals[hlog_ind] != PARAM_UNSET) {
        if(pc->vals[wlog_ind] + 1 < pc->vals[hlog_ind]) {
            pc->vals[hlog_ind] = pc->vals[wlog_ind] + 1;
            FUNC0("Warning: hashlog too much larger than windowLog size, adjusted to %u\n",
                    (unsigned)pc->vals[hlog_ind]);
        }
    }

    if(pc->vals[slog_ind] != PARAM_UNSET && pc->vals[clog_ind] != PARAM_UNSET) {
        if(pc->vals[slog_ind] > pc->vals[clog_ind]) {
            pc->vals[clog_ind] = pc->vals[slog_ind];
            FUNC0("Warning: searchLog larger than chainLog, adjusted to %u\n",
                    (unsigned)pc->vals[slog_ind]);
        }
    }
}