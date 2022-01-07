
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef int ULL ;


 int CVMX_BOOTMEM_ALIGNMENT_SIZE ;
 int CVMX_BOOTMEM_DESC_GET_FIELD (int ) ;
 int CVMX_BOOTMEM_FLAG_NO_LOCKING ;
 int CVMX_BOOTMEM_NAMED_SET_FIELD (int,int,int) ;
 int CVMX_BOOTMEM_NAMED_SET_NAME (int,char const*,int ) ;
 scalar_t__ __cvmx_bootmem_check_version (int) ;
 int __cvmx_bootmem_lock (int) ;
 int __cvmx_bootmem_unlock (int) ;
 int base_addr ;
 int cvmx_bootmem_phy_alloc (int,int,int,int,int) ;
 int cvmx_bootmem_phy_named_block_find (char const*,int) ;
 int cvmx_dprintf (char*,int ,int ,int ,int ,char const*) ;
 int named_block_name_len ;

int64_t cvmx_bootmem_phy_named_block_alloc(uint64_t size, uint64_t min_addr, uint64_t max_addr, uint64_t alignment, const char *name, uint32_t flags)
{
    int64_t addr_allocated;
    uint64_t named_block_desc_addr;
    if (__cvmx_bootmem_check_version(3))
        return(-1);



    __cvmx_bootmem_lock(flags);

    named_block_desc_addr = cvmx_bootmem_phy_named_block_find(name, flags | CVMX_BOOTMEM_FLAG_NO_LOCKING);
    if (named_block_desc_addr)
    {
        __cvmx_bootmem_unlock(flags);
        return(-1);
    }


    named_block_desc_addr = cvmx_bootmem_phy_named_block_find(((void*)0), flags | CVMX_BOOTMEM_FLAG_NO_LOCKING);
    if (!named_block_desc_addr)
    {
        __cvmx_bootmem_unlock(flags);
        return(-1);
    }





    size = (size + (CVMX_BOOTMEM_ALIGNMENT_SIZE - 1)) & ~(CVMX_BOOTMEM_ALIGNMENT_SIZE - 1);

    addr_allocated = cvmx_bootmem_phy_alloc(size, min_addr, max_addr, alignment, flags | CVMX_BOOTMEM_FLAG_NO_LOCKING);
    if (addr_allocated >= 0)
    {
        CVMX_BOOTMEM_NAMED_SET_FIELD(named_block_desc_addr, base_addr, addr_allocated);
        CVMX_BOOTMEM_NAMED_SET_FIELD(named_block_desc_addr, size, size);
        CVMX_BOOTMEM_NAMED_SET_NAME(named_block_desc_addr, name, CVMX_BOOTMEM_DESC_GET_FIELD(named_block_name_len));
    }

    __cvmx_bootmem_unlock(flags);
    return(addr_allocated);
}
