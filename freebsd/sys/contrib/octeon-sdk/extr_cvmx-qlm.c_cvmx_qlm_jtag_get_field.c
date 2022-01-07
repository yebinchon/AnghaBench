
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __cvmx_qlm_jtag_field_t ;


 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN61XX ;
 int OCTEON_CN63XX ;
 int OCTEON_CN66XX ;
 int OCTEON_CN68XX ;
 int OCTEON_CNF71XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int const* __cvmx_qlm_jtag_field_cn52xx ;
 int const* __cvmx_qlm_jtag_field_cn56xx ;
 int const* __cvmx_qlm_jtag_field_cn63xx ;
 int const* __cvmx_qlm_jtag_field_cn66xx ;
 int const* __cvmx_qlm_jtag_field_cn68xx ;

const __cvmx_qlm_jtag_field_t *cvmx_qlm_jtag_get_field(void)
{

    if (OCTEON_IS_MODEL(OCTEON_CN68XX))
        return __cvmx_qlm_jtag_field_cn68xx;
    else if (OCTEON_IS_MODEL(OCTEON_CN66XX)
             || OCTEON_IS_MODEL(OCTEON_CN61XX)
             || OCTEON_IS_MODEL(OCTEON_CNF71XX))
        return __cvmx_qlm_jtag_field_cn66xx;
    else if (OCTEON_IS_MODEL(OCTEON_CN63XX))
        return __cvmx_qlm_jtag_field_cn63xx;
    else if (OCTEON_IS_MODEL(OCTEON_CN56XX))
        return __cvmx_qlm_jtag_field_cn56xx;
    else if (OCTEON_IS_MODEL(OCTEON_CN52XX))
        return __cvmx_qlm_jtag_field_cn52xx;
    else
    {

        return ((void*)0);
    }
}
