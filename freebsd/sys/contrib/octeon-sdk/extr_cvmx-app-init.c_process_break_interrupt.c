
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ dr; } ;
struct TYPE_4__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_uart_lsr_t ;


 int CVMX_IRQ_UART0 ;
 int CVMX_MIO_UARTX_LSR (int) ;
 int CVMX_MIO_UARTX_RBR (int) ;
 int __octeon_uart_trylock () ;
 void* cvmx_read_csr (int ) ;

__attribute__((used)) static void process_break_interrupt(int irq_number, uint64_t registers[32], void *user_arg)
{
}
