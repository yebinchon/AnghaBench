
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int cvmx_spinlock_t ;


 scalar_t__ cvmx_bootmem_desc_addr ;
 int cvmx_dprintf (char*) ;

int cvmx_bootmem_init(uint64_t mem_desc_addr)
{

    if (sizeof(cvmx_spinlock_t) != 4)
    {
        cvmx_dprintf("ERROR: Unexpected size of cvmx_spinlock_t\n");
        return(-1);
    }
    if (!cvmx_bootmem_desc_addr)
        cvmx_bootmem_desc_addr = mem_desc_addr;
    return(0);
}
