
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_l2c_get_set_bits () ;

int cvmx_l2c_get_num_sets(void)
{
    return 1 << cvmx_l2c_get_set_bits();
}
