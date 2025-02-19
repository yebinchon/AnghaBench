
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cvmx_bootmem_named_block_desc_t ;
typedef int ULL ;


 int CVMX_BOOTMEM_DESC_GET_FIELD (int ) ;
 int CVMX_BOOTMEM_NAMED_GET_FIELD (int,int ) ;
 int CVMX_BOOTMEM_NAMED_GET_NAME (int,char*,int) ;
 scalar_t__ __cvmx_bootmem_check_version (int) ;
 int base_addr ;
 scalar_t__ cvmx_bootmem_desc_addr ;
 int cvmx_dprintf (char*,...) ;
 int named_block_array_addr ;
 int named_block_name_len ;
 int named_block_num_blocks ;
 int size ;

void cvmx_bootmem_phy_named_block_print(void)
{
    int i;
    int printed = 0;

    uint64_t named_block_array_addr = CVMX_BOOTMEM_DESC_GET_FIELD(named_block_array_addr);
    int num_blocks = CVMX_BOOTMEM_DESC_GET_FIELD(named_block_num_blocks);
    int name_length = CVMX_BOOTMEM_DESC_GET_FIELD(named_block_name_len);
    uint64_t named_block_addr = named_block_array_addr;





    if (__cvmx_bootmem_check_version(3))
        return;
    cvmx_dprintf("List of currently allocated named bootmem blocks:\n");
    for (i = 0; i < num_blocks; i++)
    {
        uint64_t named_size = CVMX_BOOTMEM_NAMED_GET_FIELD(named_block_addr, size);
        if (named_size)
        {
            char name_tmp[name_length];
            uint64_t named_addr = CVMX_BOOTMEM_NAMED_GET_FIELD(named_block_addr, base_addr);
            CVMX_BOOTMEM_NAMED_GET_NAME(named_block_addr, name_tmp, name_length);
            printed++;
            cvmx_dprintf("Name: %s, address: 0x%08llx, size: 0x%08llx, index: %d\n",
                   name_tmp, (ULL)named_addr, (ULL)named_size, i);
        }
        named_block_addr += sizeof(cvmx_bootmem_named_block_desc_t);
    }
    if (!printed)
    {
        cvmx_dprintf("No named bootmem blocks exist.\n");
    }

}
