
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tx_oe; } ;
struct TYPE_7__ {void* u64; TYPE_2__ s; } ;
typedef TYPE_3__ cvmx_gpio_xbit_cfgx_t ;
struct TYPE_5__ {int tx_oe; } ;
struct TYPE_8__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_gpio_bit_cfgx_t ;


 int CVMX_GPIO_BIT_CFGX (int) ;
 int CVMX_GPIO_XBIT_CFGX (int) ;
 int OCTEON_CN61XX ;
 int OCTEON_CN66XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_dprintf (char*,int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static inline void cvmx_gpio_cfg(int bit, int mode)
{
    if (bit > 15 && bit < 20)
    {

        if (OCTEON_IS_MODEL(OCTEON_CN61XX) || OCTEON_IS_MODEL(OCTEON_CN66XX))
        {
            cvmx_gpio_xbit_cfgx_t gpio_xbit;
            gpio_xbit.u64 = cvmx_read_csr(CVMX_GPIO_XBIT_CFGX(bit));
            if (mode)
                gpio_xbit.s.tx_oe = 1;
            else
                gpio_xbit.s.tx_oe = 0;
            cvmx_write_csr(CVMX_GPIO_XBIT_CFGX(bit), gpio_xbit.u64);
        }
        else
            cvmx_dprintf("cvmx_gpio_cfg: Invalid GPIO bit(%d)\n", bit);
    }
    else
    {
        cvmx_gpio_bit_cfgx_t gpio_bit;
        gpio_bit.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(bit));
        if (mode)
            gpio_bit.s.tx_oe = 1;
        else
            gpio_bit.s.tx_oe = 0;
        cvmx_write_csr(CVMX_GPIO_BIT_CFGX(bit), gpio_bit.u64);
    }
}
