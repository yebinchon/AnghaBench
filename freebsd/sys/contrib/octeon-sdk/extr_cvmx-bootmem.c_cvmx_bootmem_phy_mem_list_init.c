
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;
typedef int cvmx_bootmem_named_block_desc_t ;
typedef int cvmx_bootmem_desc_t ;
typedef int ULL ;


 int CVMX_BOOTMEM_DESC_MAJ_VER ;
 int CVMX_BOOTMEM_DESC_MIN_VER ;
 int CVMX_BOOTMEM_DESC_SET_FIELD (int ,int) ;
 int CVMX_BOOTMEM_FLAG_END_ALLOC ;
 int CVMX_BOOTMEM_NAMED_SET_FIELD (int,int ,int ) ;
 int CVMX_BOOTMEM_NAME_LEN ;
 int CVMX_BOOTMEM_NUM_NAMED_BLOCKS ;
 scalar_t__ OCTEON_DDR0_BASE ;
 scalar_t__ OCTEON_DDR0_SIZE ;
 scalar_t__ OCTEON_DDR1_BASE ;
 scalar_t__ OCTEON_DDR1_SIZE ;
 scalar_t__ OCTEON_DDR2_BASE ;
 scalar_t__ OCTEON_MAX_PHY_MEM_SIZE ;
 int __cvmx_bootmem_phy_free (scalar_t__,scalar_t__,int ) ;
 int app_data_addr ;
 int app_data_size ;
 int base_addr ;
 scalar_t__ cvmx_bootmem_desc_addr ;
 int cvmx_bootmem_init (unsigned long) ;
 int cvmx_bootmem_phy_alloc (int,int ,int,int ,int ) ;
 int cvmx_dprintf (char*,...) ;
 unsigned long cvmx_ptr_to_phys (int *) ;
 int flags ;
 int head_addr ;
 int lock ;
 int major_version ;
 int minor_version ;
 int named_block_array_addr ;
 int named_block_name_len ;
 int named_block_num_blocks ;
 int size ;

int64_t cvmx_bootmem_phy_mem_list_init(uint64_t mem_size, uint32_t low_reserved_bytes, cvmx_bootmem_desc_t *desc_buffer)
{
    uint64_t cur_block_addr;
    int64_t addr;
    int i;
    if (!desc_buffer)
    {
        cvmx_dprintf("ERROR: no memory for cvmx_bootmem descriptor provided\n");
        return 0;
    }

    if (mem_size > OCTEON_MAX_PHY_MEM_SIZE)
    {
        mem_size = OCTEON_MAX_PHY_MEM_SIZE;
        cvmx_dprintf("ERROR: requested memory size too large, truncating to maximum size\n");
    }

    if (cvmx_bootmem_desc_addr)
        return 1;



    cvmx_bootmem_init(cvmx_ptr_to_phys(desc_buffer));





    CVMX_BOOTMEM_DESC_SET_FIELD(lock, 0);
    CVMX_BOOTMEM_DESC_SET_FIELD(flags, 0);
    CVMX_BOOTMEM_DESC_SET_FIELD(head_addr, 0);
    CVMX_BOOTMEM_DESC_SET_FIELD(major_version, CVMX_BOOTMEM_DESC_MAJ_VER);
    CVMX_BOOTMEM_DESC_SET_FIELD(minor_version, CVMX_BOOTMEM_DESC_MIN_VER);
    CVMX_BOOTMEM_DESC_SET_FIELD(app_data_addr, 0);
    CVMX_BOOTMEM_DESC_SET_FIELD(app_data_size, 0);


    cur_block_addr = (OCTEON_DDR0_BASE + low_reserved_bytes);

    if (mem_size <= OCTEON_DDR0_SIZE)
    {
        __cvmx_bootmem_phy_free(cur_block_addr, mem_size - low_reserved_bytes, 0);
        goto frees_done;
    }

    __cvmx_bootmem_phy_free(cur_block_addr, OCTEON_DDR0_SIZE - low_reserved_bytes, 0);

    mem_size -= OCTEON_DDR0_SIZE;


    if (mem_size > OCTEON_DDR1_SIZE)
    {
        __cvmx_bootmem_phy_free(OCTEON_DDR1_BASE, OCTEON_DDR1_SIZE, 0);
        __cvmx_bootmem_phy_free(OCTEON_DDR2_BASE, mem_size - OCTEON_DDR1_SIZE, 0);
    }
    else
    {
        __cvmx_bootmem_phy_free(OCTEON_DDR1_BASE, mem_size, 0);

    }
frees_done:


    CVMX_BOOTMEM_DESC_SET_FIELD(named_block_name_len, CVMX_BOOTMEM_NAME_LEN);
    CVMX_BOOTMEM_DESC_SET_FIELD(named_block_num_blocks, CVMX_BOOTMEM_NUM_NAMED_BLOCKS);
    CVMX_BOOTMEM_DESC_SET_FIELD(named_block_array_addr, 0);


    addr = cvmx_bootmem_phy_alloc(CVMX_BOOTMEM_NUM_NAMED_BLOCKS * sizeof(cvmx_bootmem_named_block_desc_t),0, 0x10000000, 0 ,CVMX_BOOTMEM_FLAG_END_ALLOC);
    if (addr >= 0)
        CVMX_BOOTMEM_DESC_SET_FIELD(named_block_array_addr, addr);





    if (!addr)
    {
        cvmx_dprintf("FATAL ERROR: unable to allocate memory for bootmem descriptor!\n");
        return(0);
    }
    for (i=0; i<CVMX_BOOTMEM_NUM_NAMED_BLOCKS; i++)
    {
        CVMX_BOOTMEM_NAMED_SET_FIELD(addr, base_addr, 0);
        CVMX_BOOTMEM_NAMED_SET_FIELD(addr, size, 0);
        addr += sizeof(cvmx_bootmem_named_block_desc_t);
    }

    return(1);
}
