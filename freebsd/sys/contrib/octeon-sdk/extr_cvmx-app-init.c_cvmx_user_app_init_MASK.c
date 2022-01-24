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
typedef  int uint64_t ;
struct TYPE_3__ {scalar_t__ board_type; int bootloader_config_flags; int system_dram_size; int /*<<< orphan*/  core_mask; int /*<<< orphan*/  phy_mem_desc_addr; } ;
typedef  TYPE_1__ cvmx_sysinfo_t ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int CVMX_BOOTINFO_CFG_FLAG_OVERSIZE_TLB_MAPPING ; 
 unsigned int CVMX_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CVMX_TLB_PAGEMASK_16M ; 
 int /*<<< orphan*/  CVMX_TLB_PAGEMASK_1M ; 
 int /*<<< orphan*/  CVMX_TLB_PAGEMASK_256M ; 
 int /*<<< orphan*/  CVMX_TLB_PAGEMASK_4M ; 
 int /*<<< orphan*/  CVMX_TLB_PAGEMASK_64M ; 
 int /*<<< orphan*/  OCTEON_CN63XX_PASS1_X ; 
 int /*<<< orphan*/  OCTEON_CN63XX_PASS2_X ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int TLB_DIRTY ; 
 int TLB_GLOBAL ; 
 int TLB_VALID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

int FUNC14(void)
{
    uint64_t bist_val;
    uint64_t mask;
    int bist_errors = 0;
    uint64_t tmp;
    uint64_t base_addr;


    /* Put message on LED display */
    if (FUNC10()->board_type != CVMX_BOARD_TYPE_SIM)
        FUNC11("CVMX    ");

    /* Check BIST results for COP0 registers, some values only meaningful in pass 2 */
    FUNC0(bist_val);
    mask = (0x3fULL<<32); // Icache;BHT;AES;HSH/GFM;LRU;register file
    bist_val &= mask;
    if (bist_val)
    {
        FUNC13("BIST FAILURE: COP0_CACHE_ERR: 0x%llx\n", (unsigned long long)bist_val);
        bist_errors++;
    }

    mask = 0xfc00000000000000ull;
    FUNC1(bist_val);
    bist_val &=  mask;
    if (bist_val)
    {
        FUNC13("BIST FAILURE: COP0_CVM_MEM_CTL: 0x%llx\n", (unsigned long long)bist_val);
        bist_errors++;
    }

    /* Set up 4 cache lines of local memory, make available from Kernel space */
    FUNC1(tmp);
    tmp &= ~0x1ffull;
    tmp |= 0x104ull;
    /* Set WBTHRESH=4 as per Core-14752 errata in cn63xxp1.X. */
    if (FUNC3(OCTEON_CN63XX_PASS1_X))
    {
        tmp &= ~(0xfull << 11);
        tmp |= 4 << 11;
    }
    FUNC2(tmp);

    if (FUNC3(OCTEON_CN63XX_PASS2_X))
    {
        /* Clear the lines of scratch memory configured, for
        ** 63XX pass 2 errata Core-15169. */
        uint64_t addr;
        unsigned  num_lines;
        FUNC1(tmp);
        num_lines = tmp & 0x3f;
        for (addr = 0; addr < CVMX_CACHE_LINE_SIZE * num_lines; addr += 8)
            FUNC9(addr, 0);
    }

#if CVMX_USE_1_TO_1_TLB_MAPPINGS

    /* Check to see if the bootloader is indicating that the application is outside
    ** of the 0x10000000 0x20000000 range, in which case we can't use 1-1 mappings */
    if (cvmx_sysinfo_get()->bootloader_config_flags & CVMX_BOOTINFO_CFG_FLAG_OVERSIZE_TLB_MAPPING)
    {
        printf("ERROR: 1-1 TLB mappings configured and oversize application loaded.\n");
        printf("ERROR: Either 1-1 TLB mappings must be disabled or application size reduced.\n");
        exit(-1);
    }

    /* Create 1-1 Mappings for all DRAM up to 8 gigs, excluding the low 1 Megabyte.  This area
    ** is reserved for the bootloader and exception vectors.  By not mapping this area, NULL pointer
    ** dereferences will be caught with TLB exceptions.  Exception handlers should be written
    ** using XKPHYS or KSEG0 addresses. */
#if CVMX_NULL_POINTER_PROTECT
    /* Exclude low 1 MByte from mapping to detect NULL pointer accesses.
    ** The only down side of this is it uses more TLB mappings */
    cvmx_core_add_fixed_tlb_mapping_bits(0x0, 0x0, 0x100000  | TLB_DIRTY | TLB_VALID | TLB_GLOBAL, CVMX_TLB_PAGEMASK_1M);
    cvmx_core_add_fixed_tlb_mapping(0x200000, 0x200000, 0x300000, CVMX_TLB_PAGEMASK_1M);
    cvmx_core_add_fixed_tlb_mapping(0x400000, 0x400000, 0x500000, CVMX_TLB_PAGEMASK_1M);
    cvmx_core_add_fixed_tlb_mapping(0x600000, 0x600000, 0x700000, CVMX_TLB_PAGEMASK_1M);

    cvmx_core_add_fixed_tlb_mapping(0x800000,  0x800000,  0xC00000, CVMX_TLB_PAGEMASK_4M);
    cvmx_core_add_fixed_tlb_mapping(0x1000000, 0x1000000, 0x1400000, CVMX_TLB_PAGEMASK_4M);
    cvmx_core_add_fixed_tlb_mapping(0x1800000, 0x1800000, 0x1c00000, CVMX_TLB_PAGEMASK_4M);

    cvmx_core_add_fixed_tlb_mapping(0x2000000, 0x2000000, 0x3000000, CVMX_TLB_PAGEMASK_16M);
    cvmx_core_add_fixed_tlb_mapping(0x4000000, 0x4000000, 0x5000000, CVMX_TLB_PAGEMASK_16M);
    cvmx_core_add_fixed_tlb_mapping(0x6000000, 0x6000000, 0x7000000, CVMX_TLB_PAGEMASK_16M);
#else
    /* Map entire low 128 Megs, including 0x0 */
    cvmx_core_add_fixed_tlb_mapping(0x0, 0x0, 0x4000000ULL, CVMX_TLB_PAGEMASK_64M);
#endif
    cvmx_core_add_fixed_tlb_mapping(0x8000000ULL, 0x8000000ULL, 0xc000000ULL, CVMX_TLB_PAGEMASK_64M);

    if (OCTEON_IS_MODEL(OCTEON_CN6XXX))
    {
        for (base_addr = 0x20000000ULL; base_addr < (cvmx_sysinfo_get()->system_dram_size + 0x10000000ULL); base_addr += 0x20000000ULL)
        {
            if (0 > cvmx_core_add_fixed_tlb_mapping(base_addr,  base_addr,  base_addr + 0x10000000ULL, CVMX_TLB_PAGEMASK_256M))
            {
                printf("ERROR adding 1-1 TLB mapping for address 0x%llx\n", (unsigned long long)base_addr);
                /* Exit from here, as expected memory mappings aren't set
                   up if this fails */
                exit(-1);
            }
        }
    }
    else
    {
        /* Create 1-1 mapping for next 256 megs
        ** bottom page is not valid */
        cvmx_core_add_fixed_tlb_mapping_bits(0x400000000ULL, 0, 0x410000000ULL  | TLB_DIRTY | TLB_VALID | TLB_GLOBAL, CVMX_TLB_PAGEMASK_256M);

        /* Map from 0.5 up to the installed memory size in 512 MByte chunks.  If this loop runs out of memory,
        ** the NULL pointer detection can be disabled to free up more TLB entries. */
        if (cvmx_sysinfo_get()->system_dram_size > 0x20000000ULL)
        {
            for (base_addr = 0x20000000ULL; base_addr <= (cvmx_sysinfo_get()->system_dram_size - 0x20000000ULL); base_addr += 0x20000000ULL)
            {
                if (0 > cvmx_core_add_fixed_tlb_mapping(base_addr,  base_addr,  base_addr + 0x10000000ULL, CVMX_TLB_PAGEMASK_256M))
                {
                    printf("ERROR adding 1-1 TLB mapping for address 0x%llx\n", (unsigned long long)base_addr);
                    /* Exit from here, as expected memory mappings
                       aren't set up if this fails */
                    exit(-1);
                }
            }
        }
    }
#endif


    cvmx_sysinfo_t *sys_info_ptr = FUNC10();
    FUNC4(sys_info_ptr->phy_mem_desc_addr);

    /* Initialize QLM and JTAG settings. Also apply any erratas. */
    if (FUNC7(FUNC10()->core_mask))
        FUNC8();

    return(0);
}