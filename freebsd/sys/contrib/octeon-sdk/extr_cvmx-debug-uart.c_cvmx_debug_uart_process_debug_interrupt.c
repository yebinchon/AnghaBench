
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


 int CVMX_MIO_UARTX_LSR (int ) ;
 int CVMX_MIO_UARTX_RBR (int ) ;
 int cvmx_debug_uart ;
 void* cvmx_read_csr (int ) ;
 int fflush (int ) ;
 int stderr ;
 int stdout ;

void cvmx_debug_uart_process_debug_interrupt(int irq_number, uint64_t registers[32], void *user_arg)
{
    cvmx_uart_lsr_t lsrval;



    lsrval.u64 = cvmx_read_csr(CVMX_MIO_UARTX_LSR(cvmx_debug_uart));
    while (lsrval.s.dr)
    {
        int c = cvmx_read_csr(CVMX_MIO_UARTX_RBR(cvmx_debug_uart));
        if (c == '\003')
        {
            register uint64_t tmp;

            fflush(stderr);
            fflush(stdout);




            asm volatile (
                "dmfc0 %0, $22\n"
                "ori   %0, %0, 0x1110\n"
                "dmtc0 %0, $22\n"
                : "=r" (tmp));
        }
        lsrval.u64 = cvmx_read_csr(CVMX_MIO_UARTX_LSR(cvmx_debug_uart));
    }
}
