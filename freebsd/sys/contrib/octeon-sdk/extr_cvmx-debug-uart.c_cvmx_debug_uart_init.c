
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_DEBUG_COMM_UART_NUM ;
 int cvmx_debug_uart ;

__attribute__((used)) static void cvmx_debug_uart_init(void)
{
    if (cvmx_debug_uart == -1)
 cvmx_debug_uart = CVMX_DEBUG_COMM_UART_NUM;
}
