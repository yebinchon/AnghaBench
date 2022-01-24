#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int dfa_memcfg0_base; int dfa_memcfg1_base; int p0_ena; int mrs_dat_p0bunk0; int p1_ena; int mrs_dat_p1bunk0; int bunkport; int mrs_dat_p0bunk1; int mrs_dat_p1bunk1; } ;
typedef  TYPE_3__ rldram_csr_config_t ;
struct TYPE_7__ {int silrst; } ;
struct TYPE_10__ {int u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_dfa_memcfg2_t ;
struct TYPE_8__ {int rldck_rst; int rldqck90_rst; } ;
struct TYPE_11__ {int u64; TYPE_2__ s; } ;
typedef  TYPE_5__ cvmx_dfa_memcfg0_t ;

/* Variables and functions */
 unsigned long long CVMX_DFA_MEMCFG0 ; 
 unsigned long long CVMX_DFA_MEMCFG1 ; 
 unsigned long long CVMX_DFA_MEMCFG2 ; 
 unsigned long long CVMX_DFA_MEMRLD ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RLD_INIT_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(rldram_csr_config_t *cfg_ptr)
{
    cvmx_dfa_memcfg0_t    memcfg0;
    cvmx_dfa_memcfg2_t    memcfg2;

    memcfg0.u64 = cfg_ptr->dfa_memcfg0_base;

    if ((FUNC0(OCTEON_CN38XX) || FUNC0(OCTEON_CN58XX)))
    {
        uint32_t dfa_memcfg0;

        if (FUNC0 (OCTEON_CN58XX)) {
	      // Set RLDQK90_RST and RDLCK_RST to reset all three DLLs.
	    memcfg0.s.rldck_rst    = 1;
	    memcfg0.s.rldqck90_rst = 1;
            FUNC5(CVMX_DFA_MEMCFG0, memcfg0.u64);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  clk/qk90 reset\n", (uint32_t) memcfg0.u64);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), memcfg0.u64);

	      // Clear RDLCK_RST while asserting RLDQK90_RST to bring RLDCK DLL out of reset.
	    memcfg0.s.rldck_rst    = 0;
	    memcfg0.s.rldqck90_rst = 1;
            FUNC5(CVMX_DFA_MEMCFG0, memcfg0.u64);
            FUNC4(4000000);  /* Wait  */
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  qk90 reset\n", (uint32_t) memcfg0.u64);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), memcfg0.u64);

	      // Clear both RDLCK90_RST and RLDQK90_RST to bring the RLDQK90 DLL out of reset.
	    memcfg0.s.rldck_rst    = 0;
	    memcfg0.s.rldqck90_rst = 0;
	    FUNC5(CVMX_DFA_MEMCFG0, memcfg0.u64);
            FUNC4(4000000);  /* Wait  */
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  DLL out of reset\n", (uint32_t) memcfg0.u64);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), memcfg0.u64);
	}

        //=======================================================================
        // Now print out the sequence of events:
        FUNC5(CVMX_DFA_MEMCFG0, cfg_ptr->dfa_memcfg0_base);
        FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  port enables\n", cfg_ptr->dfa_memcfg0_base);
        FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), cfg_ptr->dfa_memcfg0_base);
        FUNC4(4000000);  /* Wait  */

        FUNC5(CVMX_DFA_MEMCFG1, cfg_ptr->dfa_memcfg1_base);
        FUNC6("CVMX_DFA_MEMCFG1: 0x%08x\n", cfg_ptr->dfa_memcfg1_base);
        FUNC1(FUNC2(), CVMX_DFA_MEMCFG1 & ~(1ull<<63), cfg_ptr->dfa_memcfg1_base);

        if (cfg_ptr->p0_ena ==1)
        {
            FUNC5(CVMX_DFA_MEMRLD,  cfg_ptr->mrs_dat_p0bunk0);
            FUNC6("CVMX_DFA_MEMRLD : 0x%08x  p0_ena memrld\n", cfg_ptr->mrs_dat_p0bunk0);
            FUNC1(FUNC2(), CVMX_DFA_MEMRLD & ~(1ull<<63), cfg_ptr->mrs_dat_p0bunk0);

            dfa_memcfg0 = ( cfg_ptr->dfa_memcfg0_base |
                            (1 << 23) |   // P0_INIT
                            (1 << 25)     // BUNK_INIT[1:0]=Bunk#0
                          );

            FUNC5(CVMX_DFA_MEMCFG0, dfa_memcfg0);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  p0_init/bunk_init\n", dfa_memcfg0);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), dfa_memcfg0);
            FUNC4(RLD_INIT_DELAY);
            FUNC6("Delay.....\n");
            FUNC5(CVMX_DFA_MEMCFG0, cfg_ptr->dfa_memcfg0_base);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  back to base\n", cfg_ptr->dfa_memcfg0_base);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), cfg_ptr->dfa_memcfg0_base);
        }

        if (cfg_ptr->p1_ena ==1)
        {
            FUNC5(CVMX_DFA_MEMRLD,  cfg_ptr->mrs_dat_p1bunk0);
            FUNC6("CVMX_DFA_MEMRLD : 0x%08x  p1_ena memrld\n", cfg_ptr->mrs_dat_p1bunk0);
            FUNC1(FUNC2(), CVMX_DFA_MEMRLD & ~(1ull<<63), cfg_ptr->mrs_dat_p1bunk0);

            dfa_memcfg0 = ( cfg_ptr->dfa_memcfg0_base |
                            (1 << 24) |   // P1_INIT
                            (1 << 25)     // BUNK_INIT[1:0]=Bunk#0
                          );
            FUNC5(CVMX_DFA_MEMCFG0, dfa_memcfg0);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  p1_init/bunk_init\n", dfa_memcfg0);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), dfa_memcfg0);
            FUNC4(RLD_INIT_DELAY);
            FUNC6("Delay.....\n");
            FUNC5(CVMX_DFA_MEMCFG0, cfg_ptr->dfa_memcfg0_base);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  back to base\n", cfg_ptr->dfa_memcfg0_base);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), cfg_ptr->dfa_memcfg0_base);
	}

        // P0 Bunk#1
        if ((cfg_ptr->p0_ena ==1) && (cfg_ptr->bunkport == 2))
        {
            FUNC5(CVMX_DFA_MEMRLD,  cfg_ptr->mrs_dat_p0bunk1);
            FUNC6("CVMX_DFA_MEMRLD : 0x%08x  p0_ena memrld\n", cfg_ptr->mrs_dat_p0bunk1);
            FUNC1(FUNC2(), CVMX_DFA_MEMRLD & ~(1ull<<63), cfg_ptr->mrs_dat_p0bunk1);

            dfa_memcfg0 = ( cfg_ptr->dfa_memcfg0_base |
                            (1 << 23) |   // P0_INIT
                            (2 << 25)     // BUNK_INIT[1:0]=Bunk#1
                          );
            FUNC5(CVMX_DFA_MEMCFG0, dfa_memcfg0);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  p0_init/bunk_init\n", dfa_memcfg0);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), dfa_memcfg0);
            FUNC4(RLD_INIT_DELAY);
            FUNC6("Delay.....\n");

            if (cfg_ptr->p1_ena == 1)
            { // Re-arm Px_INIT if P1-B1 init is required
                FUNC5(CVMX_DFA_MEMCFG0, cfg_ptr->dfa_memcfg0_base);
                FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  px_init rearm\n", cfg_ptr->dfa_memcfg0_base);
                FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), cfg_ptr->dfa_memcfg0_base);
            }
        }

        if ((cfg_ptr->p1_ena == 1) && (cfg_ptr->bunkport == 2))
        {
            FUNC5(CVMX_DFA_MEMRLD,  cfg_ptr->mrs_dat_p1bunk1);
            FUNC6("CVMX_DFA_MEMRLD : 0x%08x  p1_ena memrld\n", cfg_ptr->mrs_dat_p1bunk1);
            FUNC1(FUNC2(), CVMX_DFA_MEMRLD & ~(1ull<<63), cfg_ptr->mrs_dat_p1bunk1);

            dfa_memcfg0 = ( cfg_ptr->dfa_memcfg0_base |
                            (1 << 24) |   // P1_INIT
                            (2 << 25)     // BUNK_INIT[1:0]=10
                          );
            FUNC5(CVMX_DFA_MEMCFG0, dfa_memcfg0);
            FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  p1_init/bunk_init\n", dfa_memcfg0);
            FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), dfa_memcfg0);
        }
        FUNC4(4000000);  // 1/100S, 0.01S, 10mS
        FUNC6("Delay.....\n");

          /* Enable bunks */
        dfa_memcfg0 = cfg_ptr->dfa_memcfg0_base |((cfg_ptr->bunkport >= 1) << 25) | ((cfg_ptr->bunkport == 2) << 26);
        FUNC5(CVMX_DFA_MEMCFG0, dfa_memcfg0);
        FUNC6("CVMX_DFA_MEMCFG0: 0x%08x  enable bunks\n", dfa_memcfg0);
        FUNC1(FUNC2(), CVMX_DFA_MEMCFG0 & ~(1ull<<63), dfa_memcfg0);
        FUNC4(RLD_INIT_DELAY);
        FUNC6("Delay.....\n");

          /* Issue a Silo reset by toggling SILRST in memcfg2. */
        memcfg2.u64 = FUNC3 (CVMX_DFA_MEMCFG2);
        memcfg2.s.silrst = 1;
	FUNC5 (CVMX_DFA_MEMCFG2, memcfg2.u64);
        FUNC6("CVMX_DFA_MEMCFG2: 0x%08x  silo reset start\n", (uint32_t) memcfg2.u64);
        memcfg2.s.silrst = 0;
	FUNC5 (CVMX_DFA_MEMCFG2, memcfg2.u64);
        FUNC6("CVMX_DFA_MEMCFG2: 0x%08x  silo reset done\n", (uint32_t) memcfg2.u64);
    }
}