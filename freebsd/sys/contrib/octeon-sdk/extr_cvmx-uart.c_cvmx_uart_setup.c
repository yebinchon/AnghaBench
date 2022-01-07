
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CLOCK_SCLK ;
 int cvmx_clock_get_rate (int ) ;
 int cvmx_uart_setup2 (int,int ,int) ;

int cvmx_uart_setup (int uart_index)
{
    return cvmx_uart_setup2(uart_index, cvmx_clock_get_rate (CVMX_CLOCK_SCLK), 115200);
}
