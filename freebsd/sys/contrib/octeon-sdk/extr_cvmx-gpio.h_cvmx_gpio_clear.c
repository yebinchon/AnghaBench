
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int clr; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_gpio_tx_clr_t ;


 int CVMX_GPIO_TX_CLR ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_gpio_clear(uint32_t clear_mask)
{
    cvmx_gpio_tx_clr_t gpio_tx_clr;
    gpio_tx_clr.u64 = 0;
    gpio_tx_clr.s.clr = clear_mask;
    cvmx_write_csr(CVMX_GPIO_TX_CLR, gpio_tx_clr.u64);
}
