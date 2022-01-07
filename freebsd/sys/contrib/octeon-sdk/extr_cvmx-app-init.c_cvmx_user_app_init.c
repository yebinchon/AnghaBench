
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ board_type; int bootloader_config_flags; int system_dram_size; int core_mask; int phy_mem_desc_addr; } ;
typedef TYPE_1__ cvmx_sysinfo_t ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int CVMX_BOOTINFO_CFG_FLAG_OVERSIZE_TLB_MAPPING ;
 unsigned int CVMX_CACHE_LINE_SIZE ;
 int CVMX_MF_CACHE_ERR (int) ;
 int CVMX_MF_CVM_MEM_CTL (int) ;
 int CVMX_MT_CVM_MEM_CTL (int) ;
 int CVMX_TLB_PAGEMASK_16M ;
 int CVMX_TLB_PAGEMASK_1M ;
 int CVMX_TLB_PAGEMASK_256M ;
 int CVMX_TLB_PAGEMASK_4M ;
 int CVMX_TLB_PAGEMASK_64M ;
 int OCTEON_CN63XX_PASS1_X ;
 int OCTEON_CN63XX_PASS2_X ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int TLB_DIRTY ;
 int TLB_GLOBAL ;
 int TLB_VALID ;
 int cvmx_bootmem_init (int ) ;
 scalar_t__ cvmx_core_add_fixed_tlb_mapping (int,int,int,int ) ;
 int cvmx_core_add_fixed_tlb_mapping_bits (int,int,int,int ) ;
 scalar_t__ cvmx_coremask_first_core (int ) ;
 int cvmx_qlm_init () ;
 int cvmx_scratch_write64 (int,int ) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int ebt3000_str_write (char*) ;
 int exit (int) ;
 int printf (char*,...) ;

int cvmx_user_app_init(void)
{
    uint64_t bist_val;
    uint64_t mask;
    int bist_errors = 0;
    uint64_t tmp;
    uint64_t base_addr;



    if (cvmx_sysinfo_get()->board_type != CVMX_BOARD_TYPE_SIM)
        ebt3000_str_write("CVMX    ");


    CVMX_MF_CACHE_ERR(bist_val);
    mask = (0x3fULL<<32);
    bist_val &= mask;
    if (bist_val)
    {
        printf("BIST FAILURE: COP0_CACHE_ERR: 0x%llx\n", (unsigned long long)bist_val);
        bist_errors++;
    }

    mask = 0xfc00000000000000ull;
    CVMX_MF_CVM_MEM_CTL(bist_val);
    bist_val &= mask;
    if (bist_val)
    {
        printf("BIST FAILURE: COP0_CVM_MEM_CTL: 0x%llx\n", (unsigned long long)bist_val);
        bist_errors++;
    }


    CVMX_MF_CVM_MEM_CTL(tmp);
    tmp &= ~0x1ffull;
    tmp |= 0x104ull;

    if (OCTEON_IS_MODEL(OCTEON_CN63XX_PASS1_X))
    {
        tmp &= ~(0xfull << 11);
        tmp |= 4 << 11;
    }
    CVMX_MT_CVM_MEM_CTL(tmp);

    if (OCTEON_IS_MODEL(OCTEON_CN63XX_PASS2_X))
    {


        uint64_t addr;
        unsigned num_lines;
        CVMX_MF_CVM_MEM_CTL(tmp);
        num_lines = tmp & 0x3f;
        for (addr = 0; addr < CVMX_CACHE_LINE_SIZE * num_lines; addr += 8)
            cvmx_scratch_write64(addr, 0);
    }
    cvmx_sysinfo_t *sys_info_ptr = cvmx_sysinfo_get();
    cvmx_bootmem_init(sys_info_ptr->phy_mem_desc_addr);


    if (cvmx_coremask_first_core(cvmx_sysinfo_get()->core_mask))
        cvmx_qlm_init();

    return(0);
}
