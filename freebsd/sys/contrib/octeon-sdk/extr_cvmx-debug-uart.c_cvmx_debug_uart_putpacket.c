
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_debug_uart ;
 int cvmx_debug_uart_lock ;
 int cvmx_debug_uart_strhex (char*,unsigned char) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int cvmx_uart_write_byte (int ,char) ;
 int cvmx_uart_write_string (int ,char*) ;

__attribute__((used)) static int cvmx_debug_uart_putpacket(char *packet)
{
    size_t i;
    unsigned char csum;
    unsigned char *ptr = (unsigned char *) packet;
    char csumstr[3];

    for (csum = 0, i = 0; ptr[i]; i++)
      csum += ptr[i];
    cvmx_debug_uart_strhex(csumstr, csum);

    cvmx_spinlock_lock(&cvmx_debug_uart_lock);
    cvmx_uart_write_byte(cvmx_debug_uart, '$');
    cvmx_uart_write_string(cvmx_debug_uart, packet);
    cvmx_uart_write_byte(cvmx_debug_uart, '#');
    cvmx_uart_write_string(cvmx_debug_uart, csumstr);
    cvmx_spinlock_unlock(&cvmx_debug_uart_lock);

    return 0;
}
