
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int uart; } ;
struct TYPE_4__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_ciu_intx0_t ;


 int CVMX_CIU_INTX_EN0 (int) ;
 unsigned int cvmx_debug_uart ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static void cvmx_debug_uart_change_core(int oldcore, int newcore)
{

    cvmx_ciu_intx0_t irq_control;

    irq_control.u64 = cvmx_read_csr(CVMX_CIU_INTX_EN0(newcore * 2));
    irq_control.s.uart |= (1u<<cvmx_debug_uart);
    cvmx_write_csr(CVMX_CIU_INTX_EN0(newcore * 2), irq_control.u64);


    irq_control.u64 = cvmx_read_csr(CVMX_CIU_INTX_EN0(oldcore * 2));
    irq_control.s.uart &= ~(1u<<cvmx_debug_uart);
    cvmx_write_csr(CVMX_CIU_INTX_EN0(oldcore* 2), irq_control.u64);

}
