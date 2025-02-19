
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int cvmx_bootmem_named_block_desc_t ;


 int CVMX_BOOTMEM_DESC_GET_FIELD (int ) ;
 int CVMX_BOOTMEM_NAMED_GET_FIELD (int,int ) ;
 int CVMX_BOOTMEM_NAMED_GET_NAME (int,char*,int) ;
 int __cvmx_bootmem_check_version (int) ;
 int __cvmx_bootmem_lock (int ) ;
 int __cvmx_bootmem_unlock (int ) ;
 int cvmx_dprintf (char*,char const*) ;
 int named_block_array_addr ;
 int named_block_name_len ;
 int named_block_num_blocks ;
 int size ;
 int strncmp (char const*,char*,int) ;

uint64_t cvmx_bootmem_phy_named_block_find(const char *name, uint32_t flags)
{
    uint64_t result = 0;




    __cvmx_bootmem_lock(flags);
    if (!__cvmx_bootmem_check_version(3))
    {
        int i;
        uint64_t named_block_array_addr = CVMX_BOOTMEM_DESC_GET_FIELD(named_block_array_addr);
        int num_blocks = CVMX_BOOTMEM_DESC_GET_FIELD(named_block_num_blocks);
        int name_length = CVMX_BOOTMEM_DESC_GET_FIELD(named_block_name_len);
        uint64_t named_addr = named_block_array_addr;
        for (i = 0; i < num_blocks; i++)
        {
            uint64_t named_size = CVMX_BOOTMEM_NAMED_GET_FIELD(named_addr, size);
            if (name && named_size)
            {
                char name_tmp[name_length];
                CVMX_BOOTMEM_NAMED_GET_NAME(named_addr, name_tmp, name_length);
                if (!strncmp(name, name_tmp, name_length - 1))
                {
                    result = named_addr;
                    break;
                }
            }
            else if (!name && !named_size)
            {
                result = named_addr;
                break;
            }
            named_addr += sizeof(cvmx_bootmem_named_block_desc_t);
        }
    }
    __cvmx_bootmem_unlock(flags);
    return result;
}
