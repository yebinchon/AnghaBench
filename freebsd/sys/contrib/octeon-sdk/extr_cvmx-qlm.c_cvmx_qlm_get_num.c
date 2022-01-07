
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN61XX ;
 int OCTEON_CN63XX ;
 int OCTEON_CN66XX ;
 int OCTEON_CN68XX ;
 int OCTEON_CNF71XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

int cvmx_qlm_get_num(void)
{
    if (OCTEON_IS_MODEL(OCTEON_CN68XX))
        return 5;
    else if (OCTEON_IS_MODEL(OCTEON_CN66XX))
        return 3;
    else if (OCTEON_IS_MODEL(OCTEON_CN63XX))
        return 3;
    else if (OCTEON_IS_MODEL(OCTEON_CN61XX))
        return 3;
    else if (OCTEON_IS_MODEL(OCTEON_CN56XX))
        return 4;
    else if (OCTEON_IS_MODEL(OCTEON_CN52XX) || OCTEON_IS_MODEL(OCTEON_CNF71XX))
        return 2;


    return 0;
}
