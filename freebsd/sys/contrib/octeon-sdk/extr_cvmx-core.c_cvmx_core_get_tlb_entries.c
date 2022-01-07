
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN3XXX ;
 int OCTEON_CN5XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

int cvmx_core_get_tlb_entries(void)
{
    if (OCTEON_IS_MODEL(OCTEON_CN3XXX))
        return 32;
    else if (OCTEON_IS_MODEL(OCTEON_CN5XXX))
        return 64;
    else
        return 128;
}
