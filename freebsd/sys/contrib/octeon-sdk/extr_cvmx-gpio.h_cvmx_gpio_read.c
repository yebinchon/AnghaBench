
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int dat; } ;
struct TYPE_4__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_gpio_rx_dat_t ;


 int CVMX_GPIO_RX_DAT ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static inline uint32_t cvmx_gpio_read(void)
{
    cvmx_gpio_rx_dat_t gpio_rx_dat;
    gpio_rx_dat.u64 = cvmx_read_csr(CVMX_GPIO_RX_DAT);
    return gpio_rx_dat.s.dat;
}
