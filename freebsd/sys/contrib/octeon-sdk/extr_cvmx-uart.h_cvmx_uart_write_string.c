
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_uart_write_byte (int,char const) ;

__attribute__((used)) static inline void cvmx_uart_write_string(int uart_index, const char *str)
{

    while (*str)
    {
        cvmx_uart_write_byte(uart_index, *str);
        str++;
    }
}
