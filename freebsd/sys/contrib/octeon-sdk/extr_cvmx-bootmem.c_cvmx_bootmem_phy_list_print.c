
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ULL ;


 int CVMX_BOOTMEM_DESC_GET_FIELD (int ) ;
 scalar_t__ cvmx_bootmem_desc_addr ;
 int cvmx_bootmem_phy_get_next (int) ;
 scalar_t__ cvmx_bootmem_phy_get_size (int) ;
 int cvmx_dprintf (char*,...) ;
 int head_addr ;
 int major_version ;
 int minor_version ;

void cvmx_bootmem_phy_list_print(void)
{
    uint64_t addr;

    addr = CVMX_BOOTMEM_DESC_GET_FIELD(head_addr);
    cvmx_dprintf("\n\n\nPrinting bootmem block list, descriptor: 0x%llx,  head is 0x%llx\n",
           (ULL)cvmx_bootmem_desc_addr, (ULL)addr);
    cvmx_dprintf("Descriptor version: %d.%d\n",
        (int)CVMX_BOOTMEM_DESC_GET_FIELD(major_version),
        (int)CVMX_BOOTMEM_DESC_GET_FIELD(minor_version));
    if (CVMX_BOOTMEM_DESC_GET_FIELD(major_version) > 3)
    {
        cvmx_dprintf("Warning: Bootmem descriptor version is newer than expected\n");
    }
    if (!addr)
    {
        cvmx_dprintf("mem list is empty!\n");
    }
    while (addr)
    {
        cvmx_dprintf("Block address: 0x%08llx, size: 0x%08llx, next: 0x%08llx\n",
               (ULL)addr,
               (ULL)cvmx_bootmem_phy_get_size(addr),
               (ULL)cvmx_bootmem_phy_get_next(addr));
        addr = cvmx_bootmem_phy_get_next(addr);
    }
    cvmx_dprintf("\n\n");

}
