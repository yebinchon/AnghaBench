
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef int ULL ;


 int ALIGN_ADDR_UP (int ,int) ;
 int CVMX_BOOTMEM_ALIGNMENT_SIZE ;
 int CVMX_BOOTMEM_DESC_GET_FIELD (int) ;
 int CVMX_BOOTMEM_DESC_SET_FIELD (int,int) ;
 int CVMX_BOOTMEM_FLAG_END_ALLOC ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 scalar_t__ __cvmx_bootmem_check_version (int ) ;
 int __cvmx_bootmem_lock (int) ;
 int __cvmx_bootmem_unlock (int) ;
 int cvmx_bootmem_phy_get_next (int) ;
 int cvmx_bootmem_phy_get_size (int) ;
 int cvmx_bootmem_phy_set_next (int,int) ;
 int cvmx_bootmem_phy_set_size (int,int) ;
 int cvmx_dprintf (char*,int ,int ,...) ;

int64_t cvmx_bootmem_phy_alloc(uint64_t req_size, uint64_t address_min, uint64_t address_max, uint64_t alignment, uint32_t flags)
{

    uint64_t head_addr;
    uint64_t ent_addr;
    uint64_t prev_addr = 0;
    uint64_t new_ent_addr = 0;
    uint64_t desired_min_addr;
    uint64_t alignment_mask = ~(alignment - 1);






    if (__cvmx_bootmem_check_version(0))
        goto error_out;







    if (!req_size)
        goto error_out;


    req_size = (req_size + (CVMX_BOOTMEM_ALIGNMENT_SIZE - 1)) & ~(CVMX_BOOTMEM_ALIGNMENT_SIZE - 1);




    if (alignment < CVMX_BOOTMEM_ALIGNMENT_SIZE)
    {
        alignment = CVMX_BOOTMEM_ALIGNMENT_SIZE;
    }
    alignment_mask = ~(alignment - 1);



    if (alignment)
        address_min = (address_min + (alignment - 1)) & ~(alignment - 1);



    if (address_min && !address_max)
        address_max = address_min + req_size;
    else if (!address_min && !address_max)
        address_max = ~0ull;



    if (req_size > address_max - address_min)
        goto error_out;



    __cvmx_bootmem_lock(flags);
    head_addr = CVMX_BOOTMEM_DESC_GET_FIELD(head_addr);
    ent_addr = head_addr;
    while (ent_addr)
    {
        uint64_t usable_base, usable_max;
        uint64_t ent_size = cvmx_bootmem_phy_get_size(ent_addr);

        if (cvmx_bootmem_phy_get_next(ent_addr) && ent_addr > cvmx_bootmem_phy_get_next(ent_addr))
        {
            cvmx_dprintf("Internal bootmem_alloc() error: ent: 0x%llx, next: 0x%llx\n",
                   (ULL)ent_addr, (ULL)cvmx_bootmem_phy_get_next(ent_addr));
            goto error_out;
        }



        usable_base = ALIGN_ADDR_UP(MAX(address_min, ent_addr), alignment_mask);
        usable_max = MIN(address_max, ent_addr + ent_size);


        desired_min_addr = usable_base;


        if ((((ent_addr + ent_size) > usable_base && ent_addr < address_max))
            && req_size <= usable_max - usable_base)
        {




            if (flags & CVMX_BOOTMEM_FLAG_END_ALLOC)
            {
                desired_min_addr = usable_max - req_size;

                desired_min_addr &= alignment_mask;
            }


            if (desired_min_addr == ent_addr)
            {
                if (req_size < ent_size)
                {

                    new_ent_addr = ent_addr + req_size;
                    cvmx_bootmem_phy_set_next(new_ent_addr, cvmx_bootmem_phy_get_next(ent_addr));
                    cvmx_bootmem_phy_set_size(new_ent_addr, ent_size - req_size);


                    cvmx_bootmem_phy_set_next(ent_addr, new_ent_addr);
                }


                if (prev_addr)
                {
                    cvmx_bootmem_phy_set_next(prev_addr, cvmx_bootmem_phy_get_next(ent_addr));
                }
                else
                {

                    CVMX_BOOTMEM_DESC_SET_FIELD(head_addr, cvmx_bootmem_phy_get_next(ent_addr));
                }
                __cvmx_bootmem_unlock(flags);
                return(desired_min_addr);
            }
            new_ent_addr = desired_min_addr;
            cvmx_bootmem_phy_set_next(new_ent_addr, cvmx_bootmem_phy_get_next(ent_addr));
            cvmx_bootmem_phy_set_size(new_ent_addr, cvmx_bootmem_phy_get_size(ent_addr) - (desired_min_addr - ent_addr));
            cvmx_bootmem_phy_set_size(ent_addr, desired_min_addr - ent_addr);
            cvmx_bootmem_phy_set_next(ent_addr, new_ent_addr);

        }

        prev_addr = ent_addr;
        ent_addr = cvmx_bootmem_phy_get_next(ent_addr);
    }
error_out:

    __cvmx_bootmem_unlock(flags);
    return(-1);
}
