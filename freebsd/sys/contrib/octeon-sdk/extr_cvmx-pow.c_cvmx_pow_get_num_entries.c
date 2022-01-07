
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN30XX ;
 int OCTEON_CN31XX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN61XX ;
 int OCTEON_CN63XX ;
 int OCTEON_CN66XX ;
 int OCTEON_CNF71XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

int cvmx_pow_get_num_entries(void)
{
    if (OCTEON_IS_MODEL(OCTEON_CN30XX))
        return 64;
    else if (OCTEON_IS_MODEL(OCTEON_CN31XX) || OCTEON_IS_MODEL(OCTEON_CN50XX))
        return 256;
    else if (OCTEON_IS_MODEL(OCTEON_CN52XX)
             || OCTEON_IS_MODEL(OCTEON_CN61XX)
             || OCTEON_IS_MODEL(OCTEON_CNF71XX))
        return 512;
    else if (OCTEON_IS_MODEL(OCTEON_CN63XX) || OCTEON_IS_MODEL(OCTEON_CN66XX))
 return 1024;
    else
        return 2048;
}
