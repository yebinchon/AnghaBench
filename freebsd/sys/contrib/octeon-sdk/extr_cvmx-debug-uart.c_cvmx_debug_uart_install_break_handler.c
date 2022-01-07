
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_debug_uart ;
 int cvmx_debug_uart_process_debug_interrupt ;
 int cvmx_uart_enable_intr (int ,int ) ;

__attribute__((used)) static void cvmx_debug_uart_install_break_handler(void)
{




        cvmx_uart_enable_intr(cvmx_debug_uart, cvmx_debug_uart_process_debug_interrupt);

}
