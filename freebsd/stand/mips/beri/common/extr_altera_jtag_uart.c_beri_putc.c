
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_data_write (int) ;

void
beri_putc(int ch)
{

 uart_data_write(ch);
}
