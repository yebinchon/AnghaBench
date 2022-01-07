
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct TYPE_8__ {int afce; int rts; } ;
struct TYPE_10__ {int u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_uart_mcr_t ;
struct TYPE_9__ {int eps; int dlab; scalar_t__ pen; scalar_t__ stop; int cls; } ;
struct TYPE_11__ {int u64; TYPE_3__ s; } ;
typedef TYPE_5__ cvmx_uart_lcr_t ;
struct TYPE_7__ {int en; int rxfr; int txfr; } ;
struct TYPE_12__ {int u64; TYPE_1__ s; } ;
typedef TYPE_6__ cvmx_uart_fcr_t ;


 int CVMX_MF_CYCLE (scalar_t__) ;
 int CVMX_MIO_UARTX_DLH (int) ;
 int CVMX_MIO_UARTX_DLL (int) ;
 int CVMX_MIO_UARTX_FCR (int) ;
 int CVMX_MIO_UARTX_LCR (int) ;
 int CVMX_MIO_UARTX_LSR (int) ;
 int CVMX_MIO_UARTX_MCR (int) ;
 int CVMX_UART_BITS8 ;
 int cvmx_read_csr (int ) ;
 scalar_t__ cvmx_uart_simulator_p () ;
 int cvmx_write_csr (int ,int) ;

int cvmx_uart_setup2(int uart_index, int cpu_clock_hertz, int baudrate)
{
    uint16_t divisor;
    cvmx_uart_fcr_t fcrval;
    cvmx_uart_mcr_t mcrval;
    cvmx_uart_lcr_t lcrval;

    fcrval.u64 = 0;
    fcrval.s.en = 1;
    fcrval.s.rxfr = 1;
    fcrval.s.txfr = 1;

    if (cvmx_uart_simulator_p())
        divisor = 1;
    else
        divisor = ((unsigned long)(cpu_clock_hertz + 8 * baudrate) / (unsigned long)(16 * baudrate));

    cvmx_write_csr(CVMX_MIO_UARTX_FCR(uart_index), fcrval.u64);

    mcrval.u64 = 0;
    if (uart_index == 1 && cvmx_uart_simulator_p())
      mcrval.s.afce = 1;
    else
      mcrval.s.afce = 0;

    mcrval.s.rts = 1;

    cvmx_read_csr(CVMX_MIO_UARTX_LSR(uart_index));

    lcrval.u64 = 0;
    lcrval.s.cls = CVMX_UART_BITS8;
    lcrval.s.stop = 0;
    lcrval.s.pen = 0;
    lcrval.s.eps = 1;
    lcrval.s.dlab = 1;
    cvmx_write_csr(CVMX_MIO_UARTX_LCR(uart_index), lcrval.u64);

    cvmx_write_csr(CVMX_MIO_UARTX_DLL(uart_index), divisor & 0xff);
    cvmx_write_csr(CVMX_MIO_UARTX_DLH(uart_index), (divisor>>8) & 0xff);

    lcrval.s.dlab = 0;
    cvmx_write_csr(CVMX_MIO_UARTX_LCR(uart_index), lcrval.u64);


    if (!cvmx_uart_simulator_p())
    {
        uint64_t read_cycle;
        CVMX_MF_CYCLE (read_cycle);
        read_cycle += (2 * divisor * 16) + 10000;


        while (1)
        {
            uint64_t new_cycle;
            CVMX_MF_CYCLE (new_cycle);
            if (new_cycle >= read_cycle)
                break;
        }
    }



    cvmx_write_csr(CVMX_MIO_UARTX_MCR(uart_index), mcrval.u64);
    return 0;

}
