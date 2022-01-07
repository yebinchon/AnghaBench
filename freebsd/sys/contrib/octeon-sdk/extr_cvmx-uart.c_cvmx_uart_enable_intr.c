
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_uart_intr_handler_t ;
struct TYPE_3__ {int erbfi; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_uart_ier_t ;


 scalar_t__ CVMX_IRQ_UART0 ;
 int CVMX_MIO_UARTX_IER (int) ;
 int cvmx_interrupt_register (scalar_t__,int ,int *) ;
 int cvmx_interrupt_unmask_irq (scalar_t__) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

void cvmx_uart_enable_intr(int uart, cvmx_uart_intr_handler_t handler)
{

    cvmx_uart_ier_t ier;

    cvmx_interrupt_register(CVMX_IRQ_UART0 + uart, handler, ((void*)0));

    ier.u64 = cvmx_read_csr(CVMX_MIO_UARTX_IER(uart));
    ier.s.erbfi = 1;
    cvmx_write_csr(CVMX_MIO_UARTX_IER(uart), ier.u64);

    cvmx_interrupt_unmask_irq(CVMX_IRQ_UART0 + uart);

}
