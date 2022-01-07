
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN68XX ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

__attribute__((used)) static int __cvmx_mgmt_port_num_ports(void)
{



    if (OCTEON_IS_MODEL(OCTEON_CN56XX) || OCTEON_IS_MODEL(OCTEON_CN68XX))
        return 1;
    else if (OCTEON_IS_MODEL(OCTEON_CN52XX) || OCTEON_IS_MODEL(OCTEON_CN6XXX))
        return 2;
    else
        return 0;

}
