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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PAGE_MASK ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

__attribute__((used)) static inline void FUNC8(uint32_t tlbi)
{
    if (tlbi < (uint32_t)FUNC6()) {

        if (FUNC4(tlbi)) {
#ifdef DEBUG
            cvmx_dprintf("Index: %3d Free \n", tlbi);
#endif
        } else {
            uint64_t lo0, lo1, pgmask;
            uint32_t hi;
#ifdef DEBUG
            uint32_t c0, c1;
            int width = 13;
#endif

            FUNC5(tlbi);

            FUNC0(hi);
            FUNC1(lo0);
            FUNC2(lo1);
            FUNC3(pgmask);

#ifdef DEBUG
            c0 = ( lo0 >> 3 ) & 7;
            c1 = ( lo1 >> 3 ) & 7;

            cvmx_dprintf("va=%0*lx asid=%02x\n",
                               width, (hi & ~0x1fffUL), hi & 0xff);

            cvmx_dprintf("\t[pa=%0*lx c=%d d=%d v=%d g=%d] ",
                               width,
                               (lo0 << 6) & PAGE_MASK, c0,
                               (lo0 & 4) ? 1 : 0,
                               (lo0 & 2) ? 1 : 0,
                               (lo0 & 1) ? 1 : 0);
            cvmx_dprintf("[pa=%0*lx c=%d d=%d v=%d g=%d]\n",
                               width,
                               (lo1 << 6) & PAGE_MASK, c1,
                               (lo1 & 4) ? 1 : 0,
                               (lo1 & 2) ? 1 : 0,
                               (lo1 & 1) ? 1 : 0);

#endif
        }
    }
}