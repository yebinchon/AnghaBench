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
typedef  int /*<<< orphan*/  symbolEncodingType_e ;
typedef  int ZSTD_strategy ;
typedef  int ZSTD_defaultPolicy_e ;
typedef  size_t U32 ;
typedef  scalar_t__ FSE_repeat ;
typedef  int /*<<< orphan*/  FSE_CTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t const FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FSE_repeat_check ; 
 scalar_t__ FSE_repeat_none ; 
 scalar_t__ FSE_repeat_valid ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC2 (unsigned int const*,unsigned int const,size_t,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t const FUNC4 (short const*,size_t,unsigned int const*,unsigned int const) ; 
 scalar_t__ ZSTD_defaultAllowed ; 
 scalar_t__ ZSTD_defaultDisallowed ; 
 size_t const FUNC5 (unsigned int const*,unsigned int const,size_t) ; 
 size_t const FUNC6 (int /*<<< orphan*/  const*,unsigned int const*,unsigned int const) ; 
 scalar_t__ FUNC7 (size_t const) ; 
 int const ZSTD_lazy ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 int /*<<< orphan*/  maxCode ; 
 int /*<<< orphan*/  set_basic ; 
 int /*<<< orphan*/  set_compressed ; 
 int /*<<< orphan*/  set_repeat ; 
 int /*<<< orphan*/  set_rle ; 

symbolEncodingType_e
FUNC9(
        FSE_repeat* repeatMode, unsigned const* count, unsigned const max,
        size_t const mostFrequent, size_t nbSeq, unsigned const FSELog,
        FSE_CTable const* prevCTable,
        short const* defaultNorm, U32 defaultNormLog,
        ZSTD_defaultPolicy_e const isDefaultAllowed,
        ZSTD_strategy const strategy)
{
    FUNC3(ZSTD_defaultDisallowed == 0 && ZSTD_defaultAllowed != 0);
    if (mostFrequent == nbSeq) {
        *repeatMode = FSE_repeat_none;
        if (isDefaultAllowed && nbSeq <= 2) {
            /* Prefer set_basic over set_rle when there are 2 or less symbols,
             * since RLE uses 1 byte, but set_basic uses 5-6 bits per symbol.
             * If basic encoding isn't possible, always choose RLE.
             */
            FUNC0(5, "Selected set_basic");
            return set_basic;
        }
        FUNC0(5, "Selected set_rle");
        return set_rle;
    }
    if (strategy < ZSTD_lazy) {
        if (isDefaultAllowed) {
            size_t const staticFse_nbSeq_max = 1000;
            size_t const mult = 10 - strategy;
            size_t const baseLog = 3;
            size_t const dynamicFse_nbSeq_min = (((size_t)1 << defaultNormLog) * mult) >> baseLog;  /* 28-36 for offset, 56-72 for lengths */
            FUNC8(defaultNormLog >= 5 && defaultNormLog <= 6);  /* xx_DEFAULTNORMLOG */
            FUNC8(mult <= 9 && mult >= 7);
            if ( (*repeatMode == FSE_repeat_valid)
              && (nbSeq < staticFse_nbSeq_max) ) {
                FUNC0(5, "Selected set_repeat");
                return set_repeat;
            }
            if ( (nbSeq < dynamicFse_nbSeq_min)
              || (mostFrequent < (nbSeq >> (defaultNormLog-1))) ) {
                FUNC0(5, "Selected set_basic");
                /* The format allows default tables to be repeated, but it isn't useful.
                 * When using simple heuristics to select encoding type, we don't want
                 * to confuse these tables with dictionaries. When running more careful
                 * analysis, we don't need to waste time checking both repeating tables
                 * and default tables.
                 */
                *repeatMode = FSE_repeat_none;
                return set_basic;
            }
        }
    } else {
        size_t const basicCost = isDefaultAllowed ? FUNC4(defaultNorm, defaultNormLog, count, max) : FUNC1(GENERIC);
        size_t const repeatCost = *repeatMode != FSE_repeat_none ? FUNC6(prevCTable, count, max) : FUNC1(GENERIC);
        size_t const NCountCost = FUNC2(count, max, nbSeq, FSELog);
        size_t const compressedCost = (NCountCost << 3) + FUNC5(count, max, nbSeq);

        if (isDefaultAllowed) {
            FUNC8(!FUNC7(basicCost));
            FUNC8(!(*repeatMode == FSE_repeat_valid && FUNC7(repeatCost)));
        }
        FUNC8(!FUNC7(NCountCost));
        FUNC8(compressedCost < FUNC1(maxCode));
        FUNC0(5, "Estimated bit costs: basic=%u\trepeat=%u\tcompressed=%u",
                    (unsigned)basicCost, (unsigned)repeatCost, (unsigned)compressedCost);
        if (basicCost <= repeatCost && basicCost <= compressedCost) {
            FUNC0(5, "Selected set_basic");
            FUNC8(isDefaultAllowed);
            *repeatMode = FSE_repeat_none;
            return set_basic;
        }
        if (repeatCost <= compressedCost) {
            FUNC0(5, "Selected set_repeat");
            FUNC8(!FUNC7(repeatCost));
            return set_repeat;
        }
        FUNC8(compressedCost < basicCost && compressedCost < repeatCost);
    }
    FUNC0(5, "Selected set_compressed");
    *repeatMode = FSE_repeat_check;
    return set_compressed;
}