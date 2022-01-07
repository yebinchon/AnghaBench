
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int ULL ;


 scalar_t__ CVMX_BOOTMEM_DESC_GET_FIELD (int ) ;
 int CVMX_BOOTMEM_DESC_SET_FIELD (int ,scalar_t__) ;
 scalar_t__ __cvmx_bootmem_check_version (int ) ;
 int __cvmx_bootmem_lock (int ) ;
 int __cvmx_bootmem_unlock (int ) ;
 scalar_t__ cvmx_bootmem_phy_get_next (scalar_t__) ;
 scalar_t__ cvmx_bootmem_phy_get_size (scalar_t__) ;
 int cvmx_bootmem_phy_set_next (scalar_t__,scalar_t__) ;
 int cvmx_bootmem_phy_set_size (scalar_t__,scalar_t__) ;
 int cvmx_dprintf (char*,int ,int ) ;
 int head_addr ;

int __cvmx_bootmem_phy_free(uint64_t phy_addr, uint64_t size, uint32_t flags)
{
    uint64_t cur_addr;
    uint64_t prev_addr = 0;
    int retval = 0;




    if (__cvmx_bootmem_check_version(0))
        return(0);


    if (!size)
        return(0);


    __cvmx_bootmem_lock(flags);
    cur_addr = CVMX_BOOTMEM_DESC_GET_FIELD(head_addr);
    if (cur_addr == 0 || phy_addr < cur_addr)
    {

        if (cur_addr && phy_addr + size > cur_addr)
            goto bootmem_free_done;
        else if (phy_addr + size == cur_addr)
        {

            cvmx_bootmem_phy_set_next(phy_addr, cvmx_bootmem_phy_get_next(cur_addr));
            cvmx_bootmem_phy_set_size(phy_addr, cvmx_bootmem_phy_get_size(cur_addr) + size);
            CVMX_BOOTMEM_DESC_SET_FIELD(head_addr, phy_addr);

        }
        else
        {

            cvmx_bootmem_phy_set_next(phy_addr, cur_addr);
            cvmx_bootmem_phy_set_size(phy_addr, size);
            CVMX_BOOTMEM_DESC_SET_FIELD(head_addr, phy_addr);
        }
        retval = 1;
        goto bootmem_free_done;
    }


    while (cur_addr && phy_addr > cur_addr)
    {
        prev_addr = cur_addr;
        cur_addr = cvmx_bootmem_phy_get_next(cur_addr);
    }

    if (!cur_addr)
    {



        if (prev_addr + cvmx_bootmem_phy_get_size(prev_addr) == phy_addr)
        {
            cvmx_bootmem_phy_set_size(prev_addr, cvmx_bootmem_phy_get_size(prev_addr) + size);
        }
        else
        {
            cvmx_bootmem_phy_set_next(prev_addr, phy_addr);
            cvmx_bootmem_phy_set_size(phy_addr, size);
            cvmx_bootmem_phy_set_next(phy_addr, 0);
        }
        retval = 1;
        goto bootmem_free_done;
    }
    else
    {


        if (prev_addr + cvmx_bootmem_phy_get_size(prev_addr) == phy_addr)
        {

            cvmx_bootmem_phy_set_size(prev_addr, cvmx_bootmem_phy_get_size(prev_addr) + size);
            if (phy_addr + size == cur_addr)
            {

                cvmx_bootmem_phy_set_size(prev_addr, cvmx_bootmem_phy_get_size(cur_addr) + cvmx_bootmem_phy_get_size(prev_addr));
                cvmx_bootmem_phy_set_next(prev_addr, cvmx_bootmem_phy_get_next(cur_addr));
            }
            retval = 1;
            goto bootmem_free_done;
        }
        else if (phy_addr + size == cur_addr)
        {

            cvmx_bootmem_phy_set_size(phy_addr, cvmx_bootmem_phy_get_size(cur_addr) + size);
            cvmx_bootmem_phy_set_next(phy_addr, cvmx_bootmem_phy_get_next(cur_addr));
            cvmx_bootmem_phy_set_next(prev_addr, phy_addr);
            retval = 1;
            goto bootmem_free_done;
        }


        cvmx_bootmem_phy_set_size(phy_addr, size);
        cvmx_bootmem_phy_set_next(phy_addr, cur_addr);
        cvmx_bootmem_phy_set_next(prev_addr, phy_addr);


    }
    retval = 1;

bootmem_free_done:
    __cvmx_bootmem_unlock(flags);
    return(retval);

}
