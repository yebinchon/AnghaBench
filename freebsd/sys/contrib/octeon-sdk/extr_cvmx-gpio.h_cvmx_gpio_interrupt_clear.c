
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ en; } ;
struct TYPE_13__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_5__ cvmx_gpio_multi_cast_t ;
struct TYPE_12__ {int type; } ;
struct TYPE_14__ {int u64; TYPE_4__ s; } ;
typedef TYPE_6__ cvmx_gpio_int_clr_t ;
struct TYPE_10__ {scalar_t__ int_type; scalar_t__ int_en; } ;
struct TYPE_15__ {TYPE_2__ s; void* u64; } ;
typedef TYPE_7__ cvmx_gpio_bit_cfgx_t ;
struct TYPE_11__ {int gpio; } ;
struct TYPE_16__ {int u64; TYPE_3__ s; } ;
typedef TYPE_8__ cvmx_ciu_intx_sum0_t ;


 int CVMX_CIU_INTX_SUM0 (int) ;
 int CVMX_GPIO_BIT_CFGX (int) ;
 int CVMX_GPIO_INT_CLR ;
 int CVMX_GPIO_MULTI_CAST ;
 int OCTEON_CN61XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_get_core_num () ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;

__attribute__((used)) static inline void cvmx_gpio_interrupt_clear(uint16_t clear_mask)
{
    if (OCTEON_IS_MODEL(OCTEON_CN61XX))
    {
        cvmx_gpio_multi_cast_t multi_cast;
        cvmx_gpio_bit_cfgx_t gpio_bit;
        int core = cvmx_get_core_num();

        multi_cast.u64 = cvmx_read_csr(CVMX_GPIO_MULTI_CAST);
        gpio_bit.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(core));



        if (multi_cast.s.en && gpio_bit.s.int_en && gpio_bit.s.int_type)
        {

            cvmx_ciu_intx_sum0_t ciu_sum0;
            ciu_sum0.u64 = cvmx_read_csr(CVMX_CIU_INTX_SUM0(core * 2));
            ciu_sum0.s.gpio = clear_mask & 0xf0;
            cvmx_write_csr(CVMX_CIU_INTX_SUM0(core * 2), ciu_sum0.u64);


            cvmx_write_csr(CVMX_GPIO_INT_CLR, (clear_mask & ~0xf0));
            return;
        }
    }

    cvmx_gpio_int_clr_t gpio_int_clr;
    gpio_int_clr.u64 = 0;
    gpio_int_clr.s.type = clear_mask;
    cvmx_write_csr(CVMX_GPIO_INT_CLR, gpio_int_clr.u64);
}
