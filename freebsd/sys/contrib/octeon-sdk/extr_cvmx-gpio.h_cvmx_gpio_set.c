
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int set; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_gpio_tx_set_t ;


 int CVMX_GPIO_TX_SET ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_gpio_set(uint32_t set_mask)
{
    cvmx_gpio_tx_set_t gpio_tx_set;
    gpio_tx_set.u64 = 0;
    gpio_tx_set.s.set = set_mask;
    cvmx_write_csr(CVMX_GPIO_TX_SET, gpio_tx_set.u64);
}
