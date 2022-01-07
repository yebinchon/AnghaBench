
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN61XX ;
 int OCTEON_CNF71XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

int cvmx_qlm_get_lanes(int qlm)
{
    if (OCTEON_IS_MODEL(OCTEON_CN61XX) && qlm == 1)
        return 2;
    else if (OCTEON_IS_MODEL(OCTEON_CNF71XX))
        return 2;

    return 4;
}
